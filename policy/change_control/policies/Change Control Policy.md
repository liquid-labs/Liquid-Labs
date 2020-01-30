# Change Control Policy

## Purpose and scope

Establish the Company's 'change control policy' as relates to application development and operations. See [Change Control Framework](../Change%20Control%20Framework.md) for further details.

## Policy

### Scope

* The Company will implement a Change Control system whereby all applicable changes within the production application environment are documented and approved prior to implementation.
* Any changes to any portion of the production environment are subject to the Change Control Policy. These changes include but are not limited to the following areas: 
   * application code,
   * third party libraries and services,
   * hardware changes (including virtual),
   * system patches and configuration changes,
   * network changes (including firewall and router)
   * changes to Company Policy.

### Scheduling

* The Product Manager determines the priority of each change.
* The Product Manager may request additional input from stakeholders regarding security, compliance, or scheduling implications where further clarification is needed.
* The Task Scheduling Committee is responsible for setting final priority in coordination with the Chief Software Engineer.
* The Task Scheduling Committee includes the:   
* Project Manager
   * Software Engineer
   * Chief Data Engineer
   * Cheif Network Engineer
   * Chief Host Engineer

### Signoffs

* When a Task is assigned or otherwise made available for implementation, the creator is positively asserting that the Task, to the best of their knowledge, complies with all applicable Company standards.
* When a reviewer approves a PR, they positiviely assert that the PR and all related Tasks comply, to the best of their knowledge, with Company standards.

### Quality Assurance

* All changes must be reviewed and verified by at least one staff member not involved in implementation of the changes.
* The review will specifically address regulatory issues and quality standards, each individually reviewed and attested to.
* Environment changes will include post-implementation penetration testing linked the original change request.
* All changes are implemented with a specific rollback plan in place.
