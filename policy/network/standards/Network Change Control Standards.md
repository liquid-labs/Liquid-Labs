# Network Change Control Standards

## Purpose and scope

This document discusses the controls applied to any modifications to sensitive Company networks.

Collectively, these standards, along with the rest of the [Change Control Framework](../../change_control/Change%20Control%20Framework.md) help ensure the continued security, reliability, and compliance of Company systems and operations.



## Standards

### General

* <a id="B45DE83D-5133-4F51-B2F4-C02802A3D5A5">All virtual/cloud based network components and configurations are managed as "as code", with the network code "executed" to realize the production network, and the "network code" is managed through the change control process.</a>

### Task specification

* <a id="20886EA9-9401-45F7-B072-277FFBC760DD">The Task deliverables include appropriately updating the 'Deploy notes' section of the Release Notes where the implementation is expected to include changes which require non-standard deploy procedures or additional steps.</a>
* <a id="420B60AD-D6FC-454B-8EB2-D7D04A6647E1">The Task deliverables include appropriately updating the 'Security Notes' section of the Release notes for any significant security changes including but not limited to changes involving the handling or protection of authentication data, authorization data, etc., then an update to the 'Security notes' section of the Release Notes should be included in the Task deliverables.</a>
* <a id="B3413448-9914-411B-84E6-E153F8831160">The Task deliverables include appropriately updating any related public documentation (.eg., FAQs, tutorials, user manuals, etc.) which are affected by the Task changes.</a>

### Assignment

* <a id="FCA7962D-D046-4372-BA2D-ECF33D90ED88">By assigning a Task to an individual or making a Task available to an implementation pool, the Project Manager is certifying the Task specification is complete according to all applicable standards.</a> _(PCI DSS v3.2.1 ref 6.4.5.a)_

### PR review

* <a id="A321FC16-A628-420D-9E7C-38F16EF7E76B">The Task or Tasks specifying the work to be done have been attached or referenced from the PR. The attached Tasks are fully implemented—possibly with multiple PRs—and the scope of the changes is limited to the associated Tasks.</a>
* <a id="8FEB945D-C8BE-4411-8080-3961835F9B1A">All default and test data, and especially tests accounts and any hard coded credentials have been removed from the code.</a> _(PCI DSS v3.2.1 ref 6.4.4)_
* <a id="92A70EA0-B795-49AD-9379-DDD78CBF9B05">The Task deliverables include appropriately updating the 'Deploy notes' section of the Release Notes where the implementation is expected to include changes which require non-standard deploy procedures or additional steps.</a> _(PCI DSS v3.2.1 ref 6.4.5.a, 6.5.6)_
* <a id="76816A9C-285F-4D6A-B9F0-A95FD47F41D4">The Task deliverables include appropriately updating the 'Security notes' section of the Release Notes for any significant security implications, including but not limited to authentication, authorization, etc.</a> _(PCI DSS v3.2.1 ref 6.5.6)_
* <a id="B3413448-9914-411B-84E6-E153F8831160">The Task deliverables include appropriately updating any related public documentation (.eg., FAQs, tutorials, user manuals, etc.) which are affected by the Task changes.</a> _(PCI DSS v3.2.1 ref 6.5.6)_
* <a id="3DA11794-6D81-40FE-8945-240C78A738BA">Each PR has been approved by a specific, traceable individual, indicating review of the changes by that individual according to the standards.</a> _(PCI DSS v3.2.1 ref 6.4)_

### Quality Assurance

* <a id="86EDE020-2DC9-4B39-8314-0F962EF2A921">For [significant changes](#significant-network-changes-guidelines), an internal scan report performed on a production equivalent environment referenced from the PR.</a>
* <a id="04503D9F-87E4-4668-AA93-A91DFD58EF38">Any issues with any internal scan has been clearly flagged and are addressed in a `test-exceptions.txt` file included in the work project history.</a>

### Release

* <a id="18B2ED23-696C-42BF-8874-F55F344BC0D0">If there have been any changes to a sensitive network configuration, an internal scan report performed on a production-equivalent environment prior to release must be included in the project history.</a>
* <a id="B3F93047-EA19-4576-85E5-3F8554DF34C2">If there have been any changes to a sensitive network configuration, an internal scan report performed on the production environment shortly after release must be included in the project history.</a>

## Testing standards

UNDEFINED
