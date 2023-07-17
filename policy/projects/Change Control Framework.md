# Change Control Framework

The Change Control Framework coordinates task processing and changes to artifacts in the project repositories in order to ensure changes are made according to policy.

## References

### Policies

* [Change Control Policy](policies/Change%20Control%20Policy.md)


### Standards

* [Change Control Standards](standards/Change%20Control%20Standards.md)
* [Project Standards](standards/Project%20Standards.md)
* [Release Standards](standards/Release%20Standards.md)


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

### Unit of work

A 'Unit of work':
* is a set of changes to system artifacts.
* change some aspect of the system. This includes adding new features, fixing bugs, optimizations, etc.
* may be included with other Units of work in a release.
* maintains coherent and continuous functioning of the system and compliance to Company Policy.
* is associated with a single "primary" or "lead" project/repository.
* may include multiple secondary projects/repositories.
* is completed when it is rejected or the associated pull request or requests are merged to their respective main branches each involved repository.
* can be traced across all repositories by use of a common work branch name.

### Ticket

- A 'ticket' describes a unit of work to be performed or a general tasks.
- The company's utilizes GitHub Issues for ticket management.

- In the vast majority of cases, a single ticket should be associated with a unit of work in a single project/repository.
- A single ticket may specify changes to multiple projects where it is more natural to do so.
- The ticket title summarizes the work to be done. See the [Ticket title guidelines](#ticket-title-guidelines).
- The ticket description (or body) has two required sections which may be followed by additional notes/context sections:
  1. The 'Overview' section which provides a summary and high level overview as described in the [Ticket overview guidelines](#ticket-overview-guidelines).
  2. The 'Deliverables' section which describe the concrete changes to be done in order to implement the changes; see [Ticket deliverables guidelines](#ticket-deliverables-guidelines).
  3. An optional 'Notes' sections may be added to provide additional context, hints, and references as described in the [Ticket notes guidelines](#ticket-notes-guidelines), is included when useful or mandated by standards.

#### Multi-project Tasks

In our terminology, a "project", or "Company project" if you like has a one-to-one relation with a git repository. The term "project" is also commonly used in project management systems to mean some kind of "collection of related tasks" or something similar. Where the term "project" would cause confusion, we may substitute "repository" where appropriate or use disambiguate with "Company project", "Task Manager project", etc.

Here, we use the term "Task" to refer to the conceptual work to be done and "ticket" to refer to an item in a task manager system.


Company policy allows a single ticket to address changes in multiple projects. It is always a best practice to keep tickets as narrow as practical, but spillover is allowed.



#### Ticket title guidelines

- The ticket title is generally a very short summary of the Task purpose.
- The title is ideally no more than 5 or 6 words long.
- Given the preference for brevity, summaries need not be unique nor detailed.

#### Ticket overview guidelines

- The 'Overview' section gives a non-normative, high level overview of the scope and purpose of the changes which might otherwise get lost in the details of implementation.
- For simple tickets, the overview should provide sufficient direction and context that an assignee with reasonable familiarity with the project or subject matter can complete the unit of work or task.
- Complex issues and details should be handled in the 'Notes' section.

#### Ticket deliverables guidelines

- The deliverables enumerates concrete actions to be taken to implement the unit of work or task.
- Depending on the nature of the change, the standards may require specific deliverables. E.g., an update to documentation to match a change in an API interface.
- Deliverables may be fairly low level and specify precise changes to be made such as "Do X in this file. Do Y in this file.", or they may be relatively high level such as "Rework the API according to the latest convention." The best method to specify deliverables is largely a matter of context and dependent on the nature of the ticket and knowledge of the eventual assignee.
- Deliverables should be enumerated, one per line.
- For GitHub:
   - Make use of the GitHub sub-task syntax, `* [ ]`, in specifying each deliverable.
   - You may group deliverables in a sub-list such as:
     ```
     * Do X
        * [ ] Do X.1
        * [ ] Do X.2
     ```

#### Ticket notes guidelines

- A 'Notes' section is optional, but may be used to further expound on potentially complex, confusing, or otherwise non-obvious points that need further explanation.

#### Ticket selection guidelines

- First, deal with tickets explicitly assigned by the <role>Project Manager</role> on order of priority.
- Where there is a tie in priority, use your best judgement or request clarification from the <role>Project Manager</role>role>.
- If there are no explicit assingments, use your best judgement to select you next ticket yourself.
- The default is "one ticket, one pull request", however bundling multiple tickets into a single PR is acceptable where:
  1. The changes for each individual ticket are easily discerned within the combined pull request, and
  2. there is only one "complex" ticket with significant changes (use your best judgement here), or
  3. the changes in the combined tickets are so inextricably linked as to make their separate execution impossible or at least unduly complicated.

### Change classification guidelines

- Minor changes are common and a unit of work may be designated as a 'minor change' in order to simplify handling.
- Specifically, minor changes do not require a code review.
- Minor changes must still (whenever possible) be designated as such by someone other than the asignee.
- If there is only one qualified developer on a project, then they may designate their own minor change.
- The change classification shoud be noted before the 'Overview' section (at the top of the ticket body) with the phrase 'This is a minor change.'
- The following qualify as minor changes:
  - upgrading minor and patch versions of libraries and infrastructure,
  - fixing typos or mispellings in variable names and documentation,
  - minor clarifications or grammar fixes in documentation, and
  - renaming a variable, function, etc.
- Minor changes must have no effect on behavior; any bug fix or new feature, no matter how simple, is never a minor change.
- If there is any doubt whether the change is minor or not, it is _NOT_ a minor change.
- While the minor change designation is (ideally) made by an issue manager other than the asignee, the asignee is jointly responsible for verifying that the changes qualify as minor.

## Version history

Date | Change description | Ticket | Ver. | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------

