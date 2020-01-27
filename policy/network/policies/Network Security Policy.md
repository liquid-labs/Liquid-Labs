
# Network Security Policy

## Purpose and Scope

Company networks connected to operationally vital systems and sensitive data must be managed such as to reduce the potential of system compromise, unauthorized access, and all the problem such would entail. This policy addresses the proper and consistent use and regulated management of network components, their configuration, and maintenance.

This document is part of the [Network Security Framework](../Network%20Security%20Framework.md).

## Policy




### Organization & Responsibilities

* The Chief Network Engineer is ultimately responsible for installation, configuration, monitoring, and maintenance all production network components. Discrete tasks may be delegated to Senior Network Engineers.
* The Chief Network Engineer and their designated delegates shall cooridinate with the Chief Host Engineer, the Security Officer, and their respective delegates to maintain security across all system and division boundaries as well as compliance to all Company standards and external requirements.
* Network component configurations are based on industry best practices, including those established by the Center for Internet Security (CIS).
* Network components configurations are documented and subject to change control.
* Intrusion detection system (IDS) and other network logs are actively monitored and checked at least daily by the Chief Network Engineer.
* Network Alert Responders will ensure the Security Officer is notified of any security related alerts received in a timely manner.
* The Chief Network Engineer and Security Officer will conduct regular periodic audits of network components to ensure actual configuration matches documented configuration and compliance with all Company standards.

### 

* Network configurations are reviewed by qualified staff whenever there are changes to their configuraiton, changes in the assessment or existence of external threats affecting the component, or there are changes to the operational environment and/or overall network design involving the component.

### Management

* A full current network diagram must be maintained showing the DMZ, firewalls and hubs/routers and all connections, including connections to wireless networks; plus the internal network and its segments and connections to Cardholder Data environments. 
* A full current data-flow diagram must be maintained showing the flow of all Cardholder Data across the systems and network(s).
* All new equipment, both physical and virtual, including: firewalls, routers, servers, etc, must have Industry Best Practice, robust and documented configuration standards and rule sets applied and verified as in-place before being connected to the network. 
* All existing equipment, both physical and virtual, including: firewalls, routers, servers, etc, connected to the network must have up to date Industry Best Practice, robust and documented configuration standards and rule sets applied and in-place. 
* Firewall and Router configurations and rule sets must be reviewed every 6 months to ensure they remain valid. 
* Vendor default accounts are deleted, removed, or re-configured (in that order). All account credentials are created in accordance with Authentication Standards & Guidelines.
* All configurations must be kept up to date in light of vulnerabilities discovered and new guidance issued.
* Remote administrative must be via an encrypted session using SSH, SSL/TLS or VPN, and 2-factor authentication is required. 
* Services, protocols, etc not serving a business need must be disabled. Where possible only secure services should be enabled. Under no circumstances are non-encrypting protocols such as TELNET to be allowed.
* All unnecessary functionality should be removed; this includes but is not limited to scripts, drivers, file systems, etc.
* On occasions where there is an approved and documented business need to implement an ‘insecure’ service, protocol, etc. then additional security measures must be in place to protect its use.
* A documunted business justification of the approved services, protocols, ports, etc are maintained by the responsible Chief Systems Administrator.
* All and any changes to the network, including but not limited to configurations are subject to the company’s current Change Control Policy and related procedures and must include security review and clearance from the Chief Security Administrator. 
* No confidential data, including cardholder data, is allowed to reside on equipment located in the DMZ. All such data must be on an internal network and segregated from the DMZ and untrusted networks. No access to internal networks and data is allowed except through the firewall. 
* To protect the company’s internal private IP addresses it is important that these are only given out to third-parties where there is an approved business need. This is done via the Private IP Address Disclosure Procedure.

### Physical Equipment Out of Scope

* The Company does not maintain any consumer PII or CHD on physical hardware.
* Reasonable precautions should be taken with local storage, but the Company takes no special precautions to secure local devices. In particular, the Company does not maintain a restricted area per PCI standards. 

### 

* All patches and fixes recommended by the vendors should applied in accordance with the Vulnerability Policy.


