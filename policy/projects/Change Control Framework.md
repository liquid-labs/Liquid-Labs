# Change Control Framework

The Change Control Framework coordinates task processing and changes to artifacts in the project repositories in order to ensure changes are made according to policy.

## References

### Policies

* [Change Control Policy](policies/Change%20Control%20Policy.md)

### Standards



### Procedures

#### Project life cycle procedures



#### Infrastructure management procedures



## Change control application guidelines

* The change control framework _**must**_ be applied to any sensitive project which in any way works with [sensitive data](/Glossary.md#sensitive-data).
* Projects which deal strictly with non-sensitive data, including mocked and anonymized test data are not deemed sensitive.
* Since [prototype](/Glossary.md#prototype) projects may only use mock or anonymized test data, they are never deemed 'sensitive' and are not required to use change control procedures.
* Beta projects are deemed sensitive if they use live sensitive data.
* If a beta is strictly limited to using mock or anonymized test data, it need not be deemed sensitive.
* A production project which deals with sensitive data is always itself deemed sensitive.

## Conceptual guidelines

### Unit of Work

A 'Unit of Work':
* is a set of changes to system artifacts.
* change some aspect of the system. This includes adding new features, fixing bugs, optimizations, etc.
* may be included with other Units of Work in a release.
* maintains coherent and continuous functioning of the system and compliance to Company Policy.
* is associated with a single "primary" or "lead" project/repository.
* may include multiple secondary projects/repositories.
* is completed when it is rejected or the associated pull request or requests are merged to their respective main branches each involved repository.
* can be traced across all repositories by use of a common work branch name.

### Tasks

A 'Task' describes a unit of work to be performed. Tasks may specify work to be accomplished involving multiple projects (and repositories) which must be released/promoted simultaneously to maintain system functionality and compliance. For instance, this might involving adding a new application feature and updating the "feature list" found on the company website, or updating Company Policy and also sending out notice of the update.

The Company uses the following task management systems:



The Task description has two required sections which may be followed by additional notes/context sections:
1. The Task purpose which provides a summary and high level overview as described in the [Task purpose guidelines](#task-purpose-guidelines).
2. The Task deliverables which describe the concrete changes to be done in order to implement the Task as described in the [Task deliverables guidelines](#task-deliverables-guidelines).
3. Subsequent 'note' sections may be added to provide additional context, hints, and references as described in the [Task notes guidelines](#task-notes-guidelines), is included when useful or mandated by standards.

#### Multi-project Tasks

In our terminology, a "project", or "Company project" if you like has a one-to-one relation with a git repository. The term "project" is also commonly used in project management systems to mean some kind of "collection of related tasks" or something similar. Where the term "project" would cause confusion, we may substitute "repository" where appropriate or use disambiguate with "Company project", "Task Manager project", etc.

Here, we use the term "Task" to refer to the conceptual work to be done and "ticket" to refer to an item in a task manager system.


Company policy allows a single ticket to address changes in multiple projects. It is always a best practice to keep tickets as narrow as practical, but spillover is allowed.



#### Task summary guidelines

* The Task summary (or title) is generally a very short summary of the Task purpose.
* This is ideally 3-4 words long.
* Given the preference for brevity, summaries need not be unique nor particularly descriptive.

#### Task purpose guidelines

* The purpose section gives a non-normative, high level overview of the scope and purpose of the changes which might otherwise get lost in the details of implementation.
* Typically a short description of 1-2 sentences and hardly ever more than a couple paragraphs.
* By convention, the is the first of two sections included in all Tasks.

#### Task deliverables guidelines

* The deliverables enumerates concrete actions to be taken to implement the Task changes.
* Depending on the nature of the change, the standards may require specific deliverables.
* Deliverables may be fairly low level and specify precise changes to be made such as "Do X in this file. Do Y in this file." Or they may be relatively high level such as "Rework the API according to the latest convention." The best method to specify deliverables is largely a matter of context and dependent on the nature of the Task.
* Deliverables should be enumerated, one per line.


#### Task notes guidelines

* A 'Notes' section is optional, but may be used to further expound on potentially complex, confusing, or otherwise non-obvious points that need further explanation.

#### Task selection guidelines

* First, of course deal with any emergencies or explicit directives from a Project Manager.
* In general, Implementors have final responsibility for selecting which Tasks to work on based on their own skillset, priorities, local knowledge, and the project priorities.
* All things being equal, default to the next ticket in your task queue.
* "One Task, one Pull Request" is the default, but bundling multiple Tasks as acceptable where it is expedient to do so and does not unduly bloat the changes.

### Change classification guidelines

* A change classification may be noted in the task or implied by the task type.
* The change classification is always verified by the submitter and at least one other individual (whenever possible).
* **Minor changes** cover many common cases and have a shortened attestation checklist:
  * [minor code changes]({ { .devops.code.procedures.CODE_REVIEW }}#pull-request-format-for-minor-changes)
  * [minor cloud services changes]({ { .devops.cloud.procedures.CLOUD_SERVICES_REVIEW }}#pull-request-format-for-minor-changes)
  * [minor cloud network changes]({ { .devops.networks.procedures.CLOUD_NETWORK_CONFIGURATION_REVIEW }}#pull-request-format-for-minor-changes)
  * [minor physical network changes]({ { .devops.networks.procedures.PHYSICAL_NETWORK_CONFIGURATION_REVIEW }}#pull-request-format-for-minor-changes)
  * [minor host changes]({ { .devops.hosts.procedures.HOST_MODIFICATION_REVIEW }}#pull-request-format-for-minor-changes)
  * [minor policy changes]({ { .policy.procedures.POLICY_REVIEW }}#pull-request-format-for-minor-changes)
* If there is any doubt whether the change is minor or not, it is _NOT_ a minor change.
* It is the positive responsibility of both the submitter and reviewer to consider whether a change qualifies as 'minor' under these guidelines.
* **Major changes** are any changes which don't qualify as minor.

Examples of valid minor changes:
* Fixing an obvious typo or misspelling in a comment.
* Changing a variable name in a non-sensitive repo.
* Updating a library version.



## New system component guidelines

### Hardware

- All but trivial hardware components must be tracked in the [Technology Inventory]({ { .PRODUCTION_AND_SENSITIVE_TECHNOLOGIES }}).
- Simple cables and rack accessories are considered trivial.

### Software

Software is a little tricky because obviously we do not want to directly track every library and package in use on the system directly. The key, though, is that we should be able to _get to_ any library or package in use on the system.

- All MOCA products must be listed as part of the [Technology Inventory]({ { .PRODUCTION_AND_SENSITIVE_TECHNOLOGIES }}).
- New system and application software must be tracked as part of the [Technology Inventory]({ { .PRODUCTION_AND_SENSITIVE_TECHNOLOGIES }}) unless it meets one of the following criteria:
  - the software is specified as part of a programmatically processed project libraries and dependency file, or
  - the software is specified as part of "infrastructure as code" (such as Terraform, Chef, or similar),
  - the software is a OS package retrieved from an reliable repository considered an industry standard and would be listed programmatically as a system package,
  - the behavior of the software is not altered by configuration settings, scripts, or any other thing under the Company control. I.e., to us, it is a black box.
- Individual company projects are not tracked here, but rather as part of the development department. Only "complete" software products are tracked.

Following these rules should mean that if we start with the list of directly tracked projects in the [Technology Inventory]({ { .PRODUCTION_AND_SENSITIVE_TECHNOLOGIES }}), then we can work out to every library and package on the system. E.g., if we list nginx because it's manually installed and configured, then if we're concerned with nginx modules then we would look at the nginx configuration. So, those modules don't need to be tracked just because their deployed as part of the nginx deployment.

## Version history

Date | Change description | Ticket | Ver. | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------

