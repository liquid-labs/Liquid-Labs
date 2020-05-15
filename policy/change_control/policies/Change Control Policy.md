# Change Control Policy

## Purpose and scope

Establish the Company's 'change control policy' as relates to application development and operations. See [Change Control Framework](../Change%20Control%20Framework.md) for further details.

## Policy### Scope

* <a id="DF5598C4-916B-4027-A4E1-DADFB5940C83">The Company will implement a Change Control system whereby all applicable changes within the production application environment are documented and approved prior to implementation.</a> _(PCI DSS v3.2.1 ref 6.4)_
* <a id="DF5598C4-916B-4027-A4E1-DADFB5940C83">Any changes to any portion of the production environment are subject to the Change Control Policy. These changes include but are not limited to the following areas: 
   * application code,
   * third party libraries and services,
   * hardware changes (including virtual),
   * system patches and configuration changes,
   * network changes (including firewall and router)
   * changes to Company Policy.</a> _(PCI DSS v3.2.1 ref 6.4)_

### Roles and responsibilities

* <a id="FCA7962D-D046-4372-BA2D-ECF33D90ED88">Project Managers are responsible verifying Tasks are fully specified and making the Task available to an implementation pool or assigning to a specific individual.</a> _(PCI DSS v3.2.1 ref 6.4.5.a)_

### Scheduling

* <a id="362CB04E-FBA8-4EF2-B98B-D1898176F570">The Product Manager determines the priority of each change.</a> _(-)_
* <a id="BACCA3F0-6CF8-49FF-BAAC-42F9D94B2AAA">The Product Manager may request additional input from stakeholders regarding security, compliance, or scheduling implications where further clarification is needed.</a> _(-)_
* <a id="61FE78B6-3558-454D-A345-2314FAB5473D">The Task Scheduling Committee is responsible for setting final priority in coordination with the Chief Software Engineer.</a> _(-)_
* <a id="7E3CBE93-1A81-49F7-9A3D-B3FF94737CC8">The Task Scheduling Committee includes the:   
* Project Manager
   * Software Engineer
   * Chief Data Engineer
   * Cheif Network Engineer
   * Chief Host Engineer</a> _(-)_

### Signoffs

* <a id="EC18AA2E-0D59-4485-BB40-A2C99A3E9E95">When a Task is assigned or otherwise made available for implementation, the creator is positively asserting that the Task, to the best of their knowledge, complies with all applicable Company standards.</a> _(-)_
* <a id="F2DF6F2D-ED73-48F7-8A5C-FE86972ACC2F">When a reviewer approves a PR, they positiviely assert that the PR and all related Tasks comply, to the best of their knowledge, with Company standards.</a> _(-)_

### Quality Assurance

* <a id="1B10638E-9511-4DF4-BA45-5ADD46158BF0">All changes must be reviewed and verified by at least one staff member not involved in implementation of the changes.</a> _(PCI DSS v3.2.1 ref 6.4)_
* <a id="72841C00-49B9-4C35-BD81-AE4C364A10BD">The review will specifically address regulatory issues and quality standards, each individually reviewed and attested to.</a> _(PCI DSS v3.2.1 ref 6.4)_
* <a id="5AB47DAD-EA76-4D16-948B-51965AC9E45D">Environment changes will include post-implementation penetration testing linked the original change request.</a> _(PCI DSS v3.2.1 ref 6.4)_
* <a id="8FDCD008-2D14-4BD1-90AA-F2A3C5C1AB93">All changes are implemented with a specific rollback plan in place.</a> _(PCI DSS v3.2.1 ref 6.4)_
