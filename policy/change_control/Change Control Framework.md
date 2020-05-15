# Change Control Framework

## References

### Policies

* [Change Control Policy](policies/Change%20Control%20Policy.md)

### Standards

* [Code Change Control Standards](../code/standards/Code%20Change%20Control%20Standards.md)
* [Network Change Control Standards](../network/standards/Network%20Change%20Control%20Standards.md)
* [Host Change Control Standards](../host/standards/Host%20Change%20Control%20Standards.md)
* _*UNDEFINED: Policy Change Control Standards*_

### Procedures

* [Task Management Procedure](procedures/Task%20Management%20Procedure.md)
* [Code Modification Procedure](../code/procedures/Code%20Modification%20Procedure.md)
* [Host Modification Procedure](../host/procedures/Host%20Modification%20Procedure.md)
* [Cloud Services Modification Procedure](../cloud/procedures/Cloud%20Services%20Modification%20Procedure.md)
* [Network Modification Procedure](../network/procedures/Network%20Modification%20Procedure.md)

## Conceptual guidelines

### Unit of Work

A 'Unit of Work' is a set of changes to system artifacts which, when collectively applied, change some aspect of the system while maintaining coherent and continuous functioning of the system and compliance to Company Policy. In concrete terms, the changes for a Unit of Work are organized on a git workbranch and then applied through a PR to the master branch.

### Tasks

A 'Task' describes a unit of work to be performed. Tasks may specify work to be accomplished involving multiple projects (and repositories) which must be released/promoted simultaneously to maintain system functionality and compliance. For instance, this might involving adding a new application feature and updating the "feature list" found on the company website, or updating Company Policy and also sending out notice of the update.

Tasks are tracked via GitHub, alongside 'issues' in GitHub An 'issue' is just a standard "todo" from a task management system.

The Task description is composed of two or three sections:
1. The Task purpose which provides a summary and high level overview as described in the [Task purpose guidelines](#task-purpose-guidelines).
2. The Task deliverables which describe the concrete changes to be made in order to implement the Task as described in the [Task deliverables guidelines](#task-deliverables-guidelines).
3. The third Task notes section, which provides context, hints, and references as described in the [Task notes guidelines](#task-notes-guidelines), is included when useful or mandated by standards.

* Tasks are tracked via GitHub issues.
* Tasks are thus necessarily associated with a single repository, even if the changes implied by the deliverables affect multiple repositories. See [Primary Task project guidelines](#primary-task-project-guidelines) for more information on selecting the appropriate repository in such a case.
* Not every issue is necessarily a Task.
  #### Primary task project guidelines

* Where a Task involves multiple projects, there is almost always a single 'primary' project which drives the task. If the answer to "Would I be making this change without the change made to another project?" is "Yes", then that's your primary project.
* E.g., implementing a feature in an application may require changes to the feature list as maintained in the Company website (where the app and website are each a different project). In this case, the app project is driving the change and the update to the website is dependent on the change to the app.

#### Task purpose guidelines

* The purpose section gives a non-normative, high level overview of the scope and purpose of the changes which might otherwise get lost in the details of implementation.
* Typically a short description of 1-2 sentences and hardly ever more than a couple paragraphs.
* By convention, the is the first of two sections included in all Tasks.

#### Task deliverables guidelines

* The deliverables enumerates concrete actions to be taken to implement the Task changes.
* Depending on the nature of the change, the standards may require specific deliverables. E.g., if the changes require special handling in the deploy process, then a deliverable to update the 'Deploy notes' section of the project Release Notes must be included.
* Deliverables may be fairly low level and specify precise changes to be made such as "Do X in this file. Do Y in this file." Or they may be relatively high level such as "Rework the API according to the latest convention." The best method to specify deliverables is largely a matter of context.
* Make use of the GitHub sub-task syntax, `* [ ]`, in specifying each deliverable.
* It is perfectly fine to group deliverables such as:
  ```
  * Do X
     * [ ] Do X.1
     * [ ] Do X.2
  ```
#### Task notes guidelines

* A 'Notes' section is optional, but may be used to further expound on potentially complex, confusing, or otherwise non-obvious points that need further explanation.

#### Task summary guidelines

* The Task summary is generally a very short summary of the Task purpose.

#### Task selection guidelines

* First, of course deal with any emergencies or explicit directives from a Project Manager.
* In general, Implementors have final responsibility for selecting which Tasks to work on based on their own skillset, priorities, local knowledge, and the project priorities.
* All things being equal, default to the next issue in your task queue.This can be retrieved with `liq work issues suggest`.
* "One Task, one Pull Request" is the default, but bundling multiple tasks as acceptable where it is expedient to do so and does not unduly bloat the changes.

## Code and schema update guidelines
System conventions ensure that it is always safe to re-deploy previous generation code after any update. Thus, the backout procedure is a simple 'revert code' process.

The difficulty in reverting code always stems from an incompatible schema change. Therefore, each generation of code is always compatible with the previous generation schema. This is accomplished by making schema changes to live data only additive. The new fields or tables added in the schema may be used by the new code, but the new code does not require it.

An incremental update may be initiated in the system to bring all data in line with the new schema. These incremental updates may cause older fields, tables, or relations to become obsolete. Once the updates have permeated the database, then these older fields, tables, or relations are considered dead and can be removed in a subsequent update.

Thus, in this model, a "compatibility breaking" change always takes at least  two code and three schema updates to accomplish:

1. Assume baseline code and schema versions, C<sub>n</sub> and S<sub>n</sub>.
2. A new version of code (C<sub>n+1</sub>) and schema (S<sub>n+1</sub>) are released which use new relations when present. C<sub>n+1</sub> must have the following properties:
   * When retrieving data, test to see if new schema data present and if not, use old data structures or populate new structures in-place as appropriate.
   * When writing new data, test if old data schema support is configured. If so, then write old data along with new.
   * Iteratively update the data in the system to fully conform to the new schema.
3. Once all data has been updated we can deploy a version of the code C<sub>n+2</sub> which only works with the new schema, along with a new schema S<sub>n+2</sub> which removes dead structures.

C<sub>n+1</sub>->C<sub>n</sub> is safe because the old data is still in place and maintained by C<sub>n+1</sub>, even though C<sub>n+1</sub> prefers the new data fields if present.

C<sub>n+2</sub>->C<sub>n+1</sub> is safe because C<sub>n+1</sub> can be configured to ignore the old data structures entirely.

Thus, there is always at least one 'bridge' code and schema version between a 'source' and 'goal' code/schema set. In practice, there may be multiple iterations and generations to allow sufficient time to vet changes or for operational efficiency and due to coding priorities.

In some cases, where the mapping between two changes isn't trivial, you may have one or more preparatory releases of code and schema generations that prepare but don't yet make use of the new data.