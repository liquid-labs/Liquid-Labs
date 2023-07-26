# Change Control Standards

## Purpose and scope

This document discusses the standards applied to the modification of any sensitive source code.

Collectively, these standards, along with the rest of the [Change Control Framework](../Change%20Control%20Framework.md) help ensure the continued security, reliability, and compliance of Company systems and operations.

## Standards

### Policy management

- <span id="A3F7A02F-63B1-4B2F-85F6-4C7013369E77">The <role>Policy Manager</role> is responsible for maintaining the [Change Control Framework](../Change%20Control%20Framework.md) and with keeping it up to date with best practices and company practice.</span>

### Scope

- <span id="0D3804BA-015D-480F-A148-5D0E1251DFCD">These change control standards shall be applied to manage all commits to the main branch of any sensitive repository. Further detail can be found in the [change control application guidelines](../Change%20Control%20Framework.md#change-control-application-guidelines)</span>
- <span id="1ADAFBFD-D7B1-462D-8B3B-E200179AB770">The "sensitivity status" is tracked in the [Project Inventory](Project%20Standards.md#project-inventoryj)</span>

### Work branches

- <span id="0C4164FB-89C9-48BC-BDEA-B152212831E9">Work branch names must clearly reference the primary ticket associated with the [unit of work](../Change%20Control%20Framework.md#unit-of-work).</span>
- <span id="D6157067-52AB-49BD-8657-2D6FBB931928">Where a unit of work spans multiple project repositorie, all work branches shall have use the same branch name.</span>

### Submission of changes

- <span id="846E6439-B6B4-44B7-8285-A32945D1F64C">The ticket or tickets specifying the work to done are attached or referenced from the associated pull request.</span>
- <span id="2344471E-6090-4499-839F-08B49F8B1405">Upon submission, ticket deliverables are fully implemented and any [additional changes](#additional-changes) have been documented.</span>
- <span id="E51DE60E-FC61-47C3-8D3C-584F1DABE90E">A unit test report referencing the last commit version containing functional changes is included with or linked to the pull request.</span>
- <span id="2F590A5C-5A33-4CB1-B349-34DF96F3A604">If a unit test report has failures, they must be addressed in an explanation and mitigation statement in the PR body or attached to the PR.</span>
- <span id="8FEB945D-C8BE-4411-8080-3961835F9B1A">Both the submitter and reviewer must verify all default and test data, and especially any hard coded credentials have been removed from the code.</span> *(PCI DSS v3.2.1 ref 6.4.4)*
- <span id="F0DA3291-60E2-4EE2-A430-5DB7E5FFD06E">Work branches are recursively merged to the main branch through a pull request.</span>

## Additional testing guidelines

The requirement for additional testing is considered in both the Task specification and change review steps in the development lifecycle. Additional testing may include, but is not limited to:

* **usability testing** where mock interfaces or test environments are used to judge the effect of changes on usability
* **general user testing** where the changes are initially released to a small number of users prior to general release
* **scripted user testing** where an isolated test environment is tested against an end user script
* **performance testing** not already covered by existing tests
* **penetration testing** where an isolated test environment is subjected to simulated attacks

## Version history

Date | Change description | Ticket | Ver. | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------
