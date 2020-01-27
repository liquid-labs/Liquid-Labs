






#  Network Change Control Procedure

## Purpose and scope

This document discusses the change control procedures specific to sensitive network configuration changes.

The majority of the work done in all the change control procedures involves working with and through a git repo to modify code, configuration, and documents. In general, you could look at (most) of the change controls as controlling the changes committed to the production pipelne (i.e., the `master` branch).

## Forms, documentation, & references

Required documentary evidence:

*  A GitHub Task (issue) specifying the change(s) to be made.
*  A GitHub Pull Request (PR) which encapsulates all the changes to be applied.

For general background, refer to:

*  [Change Control Policy](../../change_control/policies/Change%20Control%20Policy.md)
*  [Change Control Standards]([Network Change Control Standards]( {{ .network.standards.CHANGE_CONTROL_STANDARDS }})).
*  You may refer to the [Task Management Procedure](../../change_control/procedures/Task%20Management%20Procedure.md) for specifics regarding Task specification.



In addition:

*  May coordinate with the [Host Change Control Procedure](../../host/procedures/Host%20Change%20Control%20Procedure.md).

## Procedure

### Prerequisites

* Prior to implementation, a task must be selected. Refer to ['Task selection'](../../change_control/standards/Change%20Control%20Standards.md#task-selection) for guidance.



### Implementation


1. Begin implementation by issuing the following command:
   ```bash
   liq work start -i 12,13 "improve action log" # -i <issue list> "<ultra-short description>"`
   ```
   As the Primary Implementor will own the issue, they should generally initiate the work and, by default. The initiator is recognized as the Primary Implementor by liq.

3. Implement the changes. Refer to the [liq Development Guidebook](TODO) for details on `liq` and the development lifecycle.Remember to make regular commits and back up your work to a remote repository.
4. Once complete, ensure:
   
   * any notes regarding impact on security have been added to the Task(s) associated with the work,
   
   * `liq work qa` has been run and is passing or any exceptions can be justified,
   
   * any additional testing has been performed as warranted,



With regards to network changes in particular, it is critcal to ensure that the [Production Network Diagram](https://drive.google.com/open?id=1mF9MKOsc3XkFgiNPxGYWBUrV0RG2ksfO) remains up-to-date and that any changes to the network are reflected in that document as appropriate.




### Submission


1. When ready, submit your work with liq:
   ```bash
   liq work submit
   ```
2. This will prompt a series of statements derived from Company policy which must be confirmed, where exceptions, explained by the submitter.


The Primary Implementor should submit Work Units for review whenever possible. If there are extenuating factors, another may submit the work.







### Testing and analysis



Manual tests should be conducted according to the nature of the change and in accordance with the [Common Network Component Standards]( {{ .network.standards.COMMON_NETWORK_COMPONENT_STANDARDS }}). The results of any manual tests must be added to the project's `.test_history/<work branch name>`.







### Manual reviews

* A single individual will be assigned to own the PR. The PR owner may also be the sole reviewer, or that individual may coordinate with other individuals to accomplish all the necessary reviewers.
* The PR owner or a Project Manager may transfer PR ownership due to qualifactions and/or availability.
* By reviewing changes, each reviewer asserting they are qualified to make assertions regarding their portion of the review.
* Whenever possible, reviews should be performed by individuals who did not make significant contributions to the changes under review.
* The Chief Network Engineer must review all changes.

* All necessary attestations will be encoded in the PR as checkable task items and must be processed by assigned reviewers.

   * Any exceptions to the requirements, no matter their source, are prominently noted in either the PR description or comments.
* Once all reviewers assigned to a PR have approved the PR, it may be merged to master.







### Merge


2. After verifying all assigned reviewers have approved the changes and the PR checklist has been completed or excptions noted, the PR owner may merge the changes to master.
3. If the merge cannot be completed cleanly, then the PR should be referred/assigned to original Task owner who will be responsible for creating the correct merge on the Task work branch.
4. The PR owner must review the changes made to correct the merge prior to merging.


