# Change Control Policy

## Purpose and scope

Establish the Company's 'change control policy' as relates to operations. See [Change Control Framework](../Change%20Control%20Framework.md) for further details.

## Policy

### Scope

- <span id="DF5598C4-916B-4027-A4E1-DADFB5940C83">The company implements a Change Control System whereby all applicable changes within the production application environment are documented and approved prior to implementation and changes are verified prior to merging with the mainline.</span> *(PCI DSS v3.2.1 ref 6.4)*
- <span id="F8923F68-E801-4FEB-807C-2F02D0CAB825">Any changes to any portion of the production environment are subject to this Change Control Policy. These changes include but are not limited to the following areas:
  * application code,
  * third party libraries and services,
  * hardware changes (including virtual),
  * system patches and configuration changes,
  * network changes (including firewall and router)
  * changes to Company Policy.
</span> *(PCI DSS v3.2.1 ref 6.4)*

### Ticket prioritization and assignment

- <span id="EC18AA2E-0D59-4485-BB40-A2C99A3E9E95">When a ticket is made available, the editor is positively asserting the ticket—to the best of their knowledge—complies with all applicable company standards. A ticket is considered 'available' if it has a primary type label ('bug', 'enhancement', 'task') and no 'work in progress' labels ('needs spec').</span>
- <span id="362CB04E-FBA8-4EF2-B98B-D1898176F570">Each project is assigned a designated <role>Product Manager</role> and <role>Project Manager</role>.</span>
- <span id="BC3C93F7-A747-4D1C-8588-482276596DA9">A project's <role>Product Manager</role> shall determine the strategic value and prioritize new features and other product changes.</span>
- <span id="D3681778-DDA2-4989-85C2-E3FE9E8C0BC0"><role>Project Manager</role>s determine "must do" maintenance activities for each development cycle. The <role>Project Manager</role> will create and prioritize such [maintenance tasks](#maintenance-tasks-guidelines) at their discretion.</span>
- <span id="81DCD62B-2AE6-459E-B747-D8736A44D425">For each project, the <role>Project Manager</role> will determine final ticket priortization for each development cycle based on the strategic directives set by the <role>Product Manager</role>, technical needs, and logical ordering.</span> *(PCI DSS v3.2.1 ref 6.4.5.a)*
- <span id="BACCA3F0-6CF8-49FF-BAAC-42F9D94B2AAA">The <role>Project Manager</role> may formally request clarification, additional details, and other input from stakeholders as needed for the purpose of scheduling and prioritizing tasks.</span>
- <span id="833D7BF6-059A-45E6-8B5F-66AEBDED4A4A">Developers typically self-assign available tickets from the available pool of issues based on their own expertise and the priority and nature of the available issues.</span> *(PCI DSS v3.2.1 ref 6.4.5.a)*
- <span id="F2DF6F2D-ED73-48F7-8A5C-FE86972ACC2F">When a reviewer approves a PR, they positively assert that the PR and all related Tasks comply, to the best of their knowledge, with Company standards.</span>

### Submission, QA, and release

- <span id="203A9735-D170-4DAF-87C0-97C6E829C6FA">All changes are unit tested before being submitted for review.</span>
- <span id="1B10638E-9511-4DF4-BA45-5ADD46158BF0">Whenever a qualified candidate is available, all changes are reviewed and verified by at least one staff member not involved in implementation of the changes.</span> *(PCI DSS v3.2.1 ref 6.4)*
- <span id="F9C9884C-F82C-44D4-81D0-BE66CF72CAC4">When the <role>Release Manager</role> deploys any change controlled artifacts, they positively assert that the associated PRs and all related Tasks comply, to the best of their knowledge, with Company standards.</span>

## Maintenance tasks guidelines

* Maintenance tasks document purely technical improvements.
* Some of the most common maintenance tasks are:
  * Software patches
  * Major component upgrades
  * Audit routines
* Maintenance tasks don't change user observable behaviors except possibly wait times.
* A maintenance task may improve accuracy or breadth of user output. E.g. an improved search engine might return more results because the algorithm is superior or simple because it is faster.
* Maintenance tasks may be as simple or complex as any other task. E.g., software patches are generally trivial, but major component upgrades or platform migrations may be major, multi-cycle projects with thousands of related tasks.

## Version history

Date | Change description | Ticket | Ver. | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------

