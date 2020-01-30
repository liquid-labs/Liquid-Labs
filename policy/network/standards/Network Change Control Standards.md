# Network Change Control Standards

## Purpose and scope

This document discusses the controls applied to any modifications to sensitive Company networks.


Collectively, these standards, along with the rest of the [Change Control Framework](../../change_control/Change%20Control%20Framework.md) help ensure the continued security, reliability, and compliance of Company systems and operations.



## Standards

### Task Specification

* The Task deliverables include appropriately updating the 'Deploy notes' section of the Release Notes where the implementation is expected to include changes which require non-standard deploy procedures or additional steps.
* The Task deliverables include appropriately updating the 'Security Notes' section of the Release notes for any significant security changes including but not limited to changes involving the handling or protection of authentication data, authorization data, etc., then an update to the 'Security notes' section of the Release Notes should be included in the Task deliverables.
* The Task deliverables include appropriately updating any related public documentation (.eg., FAQs, tutorials, user manuals, etc.) which are affected by the Task changes.

### PR Review

* The Task or Tasks specifying the work to be done have been attached or referenced from the PR. The attached Tasks are fully implemented—possibly with multple PRs—and the scope of the changes is limited to the associated Tasks.
* The Task deliverables include appropriately updating the 'Deploy notes' section of the Release Notes where the implementation is expected to include changes which require non-standard deploy procedures or additional steps.
* The Task deliverables include appropriately updating the 'Security notes' section of the Release Notes for any significant security implications, including but not limited to authentication, authorization, etc.
* The Task deliverables include appropriately updating any related public documentation (.eg., FAQs, tutorials, user manuals, etc.) which are affected by the Task changes.
* Each PR has been approved by a specific, traceable individual, indicating review of the changes by that individual according to the standards.

### Quality Assurance

* For [significant changes](#significant-network-changes-guidelines), an internal scan report performed on a production equivalent environment referenced from the PR.
* Any issues with any internal scan has been clearly flagged and are addressed in a `test-exceptions.txt` file included in the work project history.

### Release

* If there have been any changes to a sensitive network configuration, an internal scan report performed on a production-equivalent environment prior to release must be included in the project history.
* If there have been any changes to a sensitive network configuration, an internal scan report performed on the production environment shortly after release must be included in the project history.
