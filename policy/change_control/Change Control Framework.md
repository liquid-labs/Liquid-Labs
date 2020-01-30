# Change Control Framework

## Key Concepts

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

* The final, optional

#### Task summary guidelines

* The Task summary is generally a very short summary of the Task purpose.

#### Task selection guidelines

* First, of course deal with any emergencies or explicit directives from a Project Manager.
* In general, Implementors have final responsibility for selecting which Tasks to work on based on their own skillset, priorities, local knowledge, and the project priorities.
* All things being equal, default to the next issue in your task queue.This can be retrieved with `liq work issues suggest`.
* "One Task, one Pull Request" is the default, but bundling multiple tasks as acceptable where it is expedient to do so and does not unduly bloat the changes.



## References

### Policies

* [Change Control Policy](policies/Change%20Control%20Policy.md)

### Standards

* [Code Change Control Standards](../code/standards/Code%20Change%20Control%20Standards.md)
* [Network Change Control Standards](../network/standards/Network%20Change%20Control%20Standards.md)
* [Host Change Control Standards](../host/standards/Host%20Change%20Control%20Standards.md)
* _*UNDEFINED: Policy Change Control Standards*_

