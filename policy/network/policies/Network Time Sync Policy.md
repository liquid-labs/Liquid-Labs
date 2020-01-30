# Network Time Sync Policy

## Purpose and scope

Consistent and well synchronized time across key systems is essential for accurate reporting and robust security. This is especially important as regards coordinated, multi-host and multi-service environments. As such, this policy is considered a part of the Company's security framework.

This document is part of the [Network Security Framework](../Network%20Security%20Framework.md).

## Policy

### -

* Only designated, single purpose time servers within a trusted, sensitive network may connect to external time sources. All other hosts, equipment, and services must synchronize exclusively with the designated internal servers.
* The external time source used must be universally established as an industry accepted resource such as NIST Internet Time Service, Public Stratum 2 Time Servers, or GPS signals.
* All internal time servers, especially when operating in the same region, are configured to peer with each other for the purposes of synchronization and backup.
* Access to time synchronization settings and time data tightly controlled, logged, and subject to audit.
* Changes to the configuration and settings of internal time servers are subject to the Company’s [Change Control Policies](../../change_control/policies/Change%20Control%20Policy.md).
* Internal time servers and related equipment, firmware and software are kept up to date and included in the company’s Risk Management and Vulnerability Management programs.
