# Change Control Policy

## Purpose and scope

Establish the Company's 'change control policy' as relates to operations. See [Change Control Framework](../Change%20Control%20Framework.md) for further details.

## Policy

### Scope

- <span id="DF5598C4-916B-4027-A4E1-DADFB5940C83">The company implements a Change Control System whereby all applicable changes within the production application environment are documented and approved prior to implementation and changes are verified prior to merging with the mainline.</span> __(PCI DSS v3.2.1 ref 6.4)__
- <span id="F8923F68-E801-4FEB-807C-2F02D0CAB825">Any changes to any portion of the production environment are subject to this Change Control Policy. These changes include but are not limited to the following areas:
  * application code,
  * third party libraries and services,
  * hardware changes (including virtual),
  * system patches and configuration changes,
  * network changes (including firewall and router)
  * changes to Company Policy.
</span> __(PCI DSS v3.2.1 ref 6.4)__

### Ticket prioritization and assignement

- <span id="EC18AA2E-0D59-4485-BB40-A2C99A3E9E95">When a ticket is made available, the editor is positively asserting the ticket—to the best of their knowledge—complies with all applicable company standards. A ticket is considered 'available' if it has a primary type label ('bug', 'enhancement', 'task') and no 'work in progress' labels ('needs spec').</span>
- <span id="362CB04E-FBA8-4EF2-B98B-D1898176F570">Each project is assigned a designated Project Manager who shall determines the strategic value of and assign priorities to new features, optimizations, bugs, and other product changes.</span>
- <span id="D3681778-DDA2-4989-85C2-E3FE9E8C0BC0">Project Managers determine "must do" maintenance activities for each development cycle. The Project Manager will create and prioritize such [maintenance tasks](#maintenance-tasks-guidelines) at their discretion.</span>
- <span id="FA631FC5-EB3F-4EB4-959C-2339BB25F473">The Project Manager is responsible for final ordering of tasks and assignments in each development cycle.</span> __(PCI DSS v3.2.1 ref 6.4.5.a)__
- <span id="BACCA3F0-6CF8-49FF-BAAC-42F9D94B2AAA">The Project Manager may formally request clarification, additional details, and other input from stakeholders as needed for the purpose of scheduling and prioritizing tasks.</span>
- <span id="833D7BF6-059A-45E6-8B5F-66AEBDED4A4A">Developers typically self-assign available tickets from the available pool of issues based on their own expertise and the priority and nature of the available issues.</span> __(PCI DSS v3.2.1 ref 6.4.5.a)__
- <span id="F2DF6F2D-ED73-48F7-8A5C-FE86972ACC2F">When a reviewer approves a PR, they positively assert that the PR and all related Tasks comply, to the best of their knowledge, with Company standards.</span>

### Submission, QA, and release

- <span id="203A9735-D170-4DAF-87C0-97C6E829C6FA">All changes are unit tested before being submitted for review.</span>
- <span id="1B10638E-9511-4DF4-BA45-5ADD46158BF0">Whenever a qualified candidate is available, all changes are reviewed and verified by at least one staff member not involved in implementation of the changes.</span> __(PCI DSS v3.2.1 ref 6.4)__
- <span id="F9C9884C-F82C-44D4-81D0-BE66CF72CAC4">When the Release Manager deploys any change controlled artifacts, they positively assert that the associated PRs and all related Tasks comply, to the best of their knowledge, with Company standards.</span>

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

