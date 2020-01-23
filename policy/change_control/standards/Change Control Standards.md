
# Change Control Standards and Guidelines

## Purpose and scope

This document establishes change control standards and provides guidance as it relates to the ensuring the policy, products, and operations of the Company remain secure, compliant, and available. Conceptually, changes begin with "task management", are implemented subject to "change controls", then "deployed."

These standards are developed in accordance with the [Change Control Policy](../policies/Change%20Control%20Policy.md).

## Policy




### Application Changes

* Change Requests related to application changes require the following information and artifacts be attached to the issue prior to release:
   * A description of the change to be implemented.
   * Details of any special dependencies not covered in the standard ‘Release Preparation’ and ‘Production Update’ procedures.
   * An attached ‘pull request’ showing changes to the application code.
   * Confirmation that code reviews have taken place and reference as to where the results can be found.
   * A passing unit and systems test report for the change is attached or all non-passing tests have been explicitly noted as exceptions and approved by the PM and TRC members.
   * Details of any security requirements related to the change. New access profiles, rights, permissions, etc.
   * Confirmation that any related public documentation (e.g., FAQs, tutorials, etc.) in any form have been updated or are associated to with a Change Request to update them within 30 days.
   * Where the PM decides that a Change Request involves a new feature or has a significant impact on the delivery schedule, approval and any notes from the Product Strategy meeting must be included.
   * The PM or TRC member may require any of the following:
   * Documentation of significant operational or security impacts.
   * Details of any PCI DSS requirements impacted by the change.
   * Any special considerations or modifications to the standard rollback plan.
   * Necessary changes to the Disaster Recovery Plan have been detailed.
   * Where there is some post-implementation risk, A ‘Post Implementation Monitoring Plan’ has been included.
* Change Requests related to application changes require the following approvals:
   * The PM is responsible for:
   * Indicating approval by the Product Strategy Committee as evidenced by minutes from the Product Strategy Meeting, or provide the basis for scheduling the change without the PSC input.
   * Documentation Signoff.
   * Testing Signoff (with TRC).
   * The TRC is responsible for:
   * Rollback Plan Approval.
   * Security Signoff.
   * Testing Signoff (with PM).
   * Disaster Recovery Plan Signoff, if applicable.
   * Monitoring Plan Signoff, if applicable.
   * Code Review Sign-off, by a qualified engineer.

### Third Party Software and Services Changes

* Change Requests related to system software and configuration changes require the following information and artifacts be attached to the issue prior to production deployment:
   * What is being changed/installed, name of the software, including uniquely identifying version numbers.
   * Details of any special dependencies not covered in the standard ‘Release Preparation’ and ‘Production Update’ procedures.
   * An attached ‘pull request’ showing changes to system or application configurations.
   * Confirmation that code reviews have taken place and reference as to where the results can be found.
   * A passing unit and systems test report for the change is attached or all non-passing tests have been explicitly noted as exceptions and approved by the PM and TRC members.
   * A reference to the updated <%Approved Technologies%> list.
   * A reference to the updated <%Software License and Service Accounts%> inventory.
   * Details of any security requirements related to the change. New access profiles, rights, permissions, etc.
   * Confirmation that any related public documentation (e.g., FAQs, tutorials, etc.) in any form have been updated or are associated with a Change Request to update them within 30 days.
   * The PM or TRC member may require any of the following:
   * Documentation of significant operational or security impacts.
   * Details of any PCI DSS requirements impacted by the change.
   * Any special considerations or modifications to the standard rollback plan.
   * Necessary changes to the <%Disaster Recovery Plan%> have been detailed.
   * Where there is some post-implementation risk, A <%Post Implementation Monitoring Plan%> has been included.
* Change Requests related to system software and configuration changes require the following approvals:
   * The PM is responsible for:
   * Documentation Signoff.
   * Testing Signoff (with TRC).
   * The TRC is responsible for:
   * Rollback Plan Approval.
   * Security Signoff.
   * Testing Signoff (with PM).
   * Disaster Recovery Plan Signoff, if applicable.
   * Monitoring Plan Signoff, if applicable.
   * The Security Officer is responsible for:
   * Signoff on updates to the <%Approved Technologies%> list.
   * Signoff on updates to the <%Software License and Service Accounts%> inventory.

### Network and Environment Changes

* Change Requests related to network and environment changes require the following information and artifacts be attached to the issue prior to production deployment:
   * Details as to the hardware being installed or modified. This should include model numbers or other identifiers (as for a virtual system) and basic configuration information.
   * Where the hardware is to be physically or logically located.
   * Details of any special dependencies not covered in the standard <%Release Preparation%> and <%Production Update%> procedures.
   * A reference to the updated <%Environment Build Book%>, <%Environment Run Book%>, <%Host Build Book%>, and <%Host Run Book%>, as applicable.
   * A passing unit and systems test report for the change is attached or all non-passing tests have been explicitly noted as exceptions and approved by the PM and TRC members.
   * A reference to the updated <%Approved Technologies%> list, if applicable.
   * A reference to the updated <%Software License and Service Accounts%> inventory, if applicable.
   * Details of any security requirements related to the change. New access profiles, rights, permissions, etc.
   * The PM or TRC member may require any of the following:
   * Documentation of significant operational or security impacts.
   * Details of any PCI DSS requirements impacted by the change.
   * Any special considerations or modifications to the standard rollback plan.
   * Necessary changes to the Disaster Recovery Plan have been detailed.
   * Where there is some post-implementation risk, A ‘Post Implementation Monitoring Plan’ has been included. Change Requests related to system software and configuration changes require the following approvals:
   * The PM is responsible for:
   * Testing Signoff (with TRC).
   * The TRC is responsible for:
   * Operations Build Book Signoff.
   * Operations Run Book Signoff, if applicable.
   * Rollback Plan Approval. Security Signoff. Testing Signoff (with PM). Disaster Recovery Plan Signoff, if applicable. Monitoring Plan Signoff, if applicable. The Security Officer is responsible for: Signoff on updates to the ‘Approved Technologies’ list, if applicable. Signoff on updates to the ‘Software License and Service Accounts’ inventory, if applicable.

### Policy Document Changes

* Change Requests related to any policy document change require the following information and artifacts be attached to the issue prior to publication:
   * The type of documentation that is being changed or issued. This includes such things as the Disaster Recovery Plan, the Policies, Procedures and Standards, and other stand-alone documentation. Documentation related to applications, etc, will normally be updated in relation to a change to that application and is therefore normally included in that Change request.
   * Typically should link to the existing document (to be updated) or location where a new document is to be created.
   * Details as to how many hard copies are required and who/where they are for, if applicable.
   * Details as to who needs to be notified that the documentation is being issued.
   * The PM or TRC member may require any of the following:
   * Documentation of significant operational or security impacts.
   * Details of any PCI DSS requirements impacted by the change.
   * Necessary changes to the Disaster Recovery Plan have been detailed.
   * Where there is some post-implementation risk, A ‘Post Implementation Monitoring Plan’ has been included. Change Requests related to policy document changes require the following approvals:
   * The TRC is responsible for:
   * Security Signoff.
   * Disaster Recovery Plan Signoff, if applicable.
   * Monitoring Plan Signoff, if applicable.
   * The Security Officer is responsible for:
   * Making and logging all necessary notifications.
   * Distributing and logging all necessary hardcopies.




## Test Case Guidelines

* Where a change involves pure "optimizations", it will not typically be necessary to add new functional tests unless the existing functional tests are found to be deficient to begin with.
* "Performance tests" which may be associated with the an optimization change should be added based on specific business needs or targets and not simply because an optimization is being put in place. Remember, tests have a cost too.
* When making a bug fix, a new test or tests should generally be added that would "catch out" the bug should it re-occur unless an existing test case should have caught the bug, but the test case was also flawed, in which case it is sufficient to fix the existing test case.
* When implementing new features, new tests should be included to cover the new behavior.

## FOR REVIEW

## Task specification

### Application Tasks

*  Application Tasks are of three discrete types. These are:
   * "update" which modifies existing behavior in response to changes in the specification,
   * "optimization" which changes implementation, but not behavior, in order to improve or re-weight operational characteristics, or
   * "bug" which repairs deficits in the implemented behavior with regard to the specified behavior.
*  Application Tasks are managed primarily by Product Manager and Project Managers.

## Task selection

* In general, Implementors have final responsibility for selecting which Tasks to work on based on their own skillset, priorities, local knowledge, and/or directives from Project Managers.
* All things being equal, Implementors should select the next issue suggested via the liq tool.
* While "one Task, one Pull Request" is the default, tackling multiple tasks in one commit is perfectly acceptable and at times may be the expedient approach.


## liq standards

* When a Unit of Work is started, liq will attempt to:
  * update the status of all associated issues to "in progress".
  * create a work branch in the form of:
    ```
    <YYYY-MM-DD>-<Task ID>-<Primary Imp. email>-<description>
    ```
    E.g.:
    ```
    2019.03.21.8329-john.smith-improve_audit_trail
    ```
  * create a tracking branch in the Primary Implementors workspace remote.
* Refer to the [Liquid Development Process](tp.LIQUID_LABS.POLICY_CORE.standards.LIQUID_DEVELOPMENT_STANDARDS) for further details.
