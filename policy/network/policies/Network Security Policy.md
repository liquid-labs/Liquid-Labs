# Network Security Policy

## Purpose and Scope

Company networks connected to operationally vital systems and sensitive data must be managed such as to reduce the potential of system compromise, unauthorized access, and all the problem such would entail. This policy addresses the proper and consistent use and regulated management of network components, their configuration, and maintenance.

This document is part of the [Network Security Framework](../Network%20Security%20Framework.md).

## Policy

### Roles and responsibilities

* <span id="9180BFCF-D1AC-483C-9C98-42E5BCE57612">The Chief Network Engineer is ultimately responsible for installation, configuration, monitoring, and maintenance all production network components. Discrete tasks may be delegated to Senior Network Engineers.</span> _(PCI DSS v3.2.1 ref 1.1.5)_
* <span id="EB665020-74E8-44F8-8326-EEA68BAFAE77">The Chief Network Engineer and their designated delegates shall cooridinate with the Chief Host Engineer, the Security Officer, and their respective delegates to maintain security across all system and division boundaries as well as compliance to all Company standards and external requirements.</span> _(PCI DSS v3.2.1 ref 1.1.5)_
* <span id="7787A486-C3C4-4A2C-B0BE-D70E4742EA1F">Network component configurations are based on industry best practices, including those established by the Center for Internet Security (CIS).</span> _(PCI DSS v3.2.1 ref 1.5, 2.2)_
* <span id="82951331-946D-464B-B492-4F82A697E5B2">Network components configurations are documented and subject to change control.</span>
* <span id="E2BF1EB4-EDFB-440A-B6BE-17AAF7E65871">Intrusion detection system (IDS) and other network logs are actively monitored and checked at least daily by the Chief Network Engineer.</span> _(PCI DSS v3.2.1 ref 10.6.1)_
* <span id="A4A57099-1F98-420F-98EB-DD6740954590">Network Alert Responders will ensure the Security Officer is notified of any security related alerts received in a timely manner.</span> _(PCI DSS v3.2.1 ref 12.5.2)_
* <span id="76CBA343-7A20-4B53-823D-B4C5CF764491">The Chief Network Engineer and Security Officer will conduct regular periodic audits of network components to ensure actual configuration matches documented configuration and compliance with all Company standards.</span>
* <span id="4D33E582-D03E-4316-9501-3ADB68F3BF1F">Network configurations are reviewed by qualified staff whenever there are changes to their configuraiton, changes in the assessment or existence of external threats affecting the component, or there are changes to the operational environment and/or overall network design involving the component.</span>

### Management

* <span id="4CB5546A-A59F-461F-A9B4-CFD8C0FBF350">A full current network diagram must be maintained showing the DMZ, firewalls and hubs/routers and all connections, including connections to wireless networks; plus the internal network and its segments and connections to Cardholder Data environments. </span> _(PCI DSS v3.2.1 ref 1.1.2)_
* <span id="BDF468C7-7B1D-4825-AD6A-CFDF441FBF8B">A full current data-flow diagram must be maintained showing the flow of all Cardholder Data across the systems and network(s).</span> _(PCI DSS v3.2.1 ref 1.1.3)_
* <span id="DF999B39-7788-46C9-835E-9BB98FB56BE5">All new equipment, both physical and virtual, including: firewalls, routers, servers, etc, must have Industry Best Practice, robust and documented configuration standards and rule sets applied and verified as in-place before being connected to the network. </span> _(PCI DSS v3.2.1 ref 1.5, 2.2.c)_
* <span id="23B7D368-F0D2-478A-914D-128445898C4C">All existing equipment, both physical and virtual, including: firewalls, routers, servers, etc, connected to the network must have up to date Industry Best Practice, robust and documented configuration standards and rule sets applied and in-place. </span> _(PCI DSS v3.2.1 ref 1.5, 2.2.a)_
* <span id="6C6BDA82-055D-4D9F-9145-33A61253E18D">Firewall and Router configurations and rule sets must be reviewed every 6 months to ensure they remain valid. </span> _(PCI DSS v3.2.1 ref 1.1.7)_
* <span id="4C38A2D2-A5B0-465A-8AC1-DD0577669C99">Vendor default accounts are deleted, removed, or re-configured (in that order). All account credentials are created in accordance with Authentication Standards & Guidelines.</span> _(PCI DSS v3.2.1 ref 2.1, 2.5)_
* <span id="BC3AF9DA-8C14-4B72-B333-143FD51F41D3">All configurations must be kept up to date in light of vulnerabilities discovered and new guidance issued.</span> _(PCI DSS v3.2.1 ref 2.2.b)_
* <span id="21BBBEA0-3CC2-4A53-ADD8-B9095F1A76E0">Remote administrative must be via an encrypted session using SSH, SSL/TLS or VPN, and 2-factor authentication is required. </span> _(PCI DSS v3.2.1 ref 2.3 & 8.3)_
* <span id="D274DB05-6C21-499B-B281-5984CFA469C9">Services, protocols, etc not serving a business need must be disabled. Where possible only secure services should be enabled. Under no circumstances are non-encrypting protocols such as TELNET to be allowed.</span> _(PCI DSS v3.2.1 ref 2.3.b)_
* <span id="D8D68392-1485-42A7-BCF7-E0F4F2573136">All unnecessary functionality should be removed; this includes but is not limited to scripts, drivers, file systems, etc.</span> _(PCI DSS v3.2.1 ref 2.2.2.a, 2.2.5.c)_
* <span id="0E21FA5E-9165-42D3-849A-53F76106DE85">On occasions where there is an approved and documented business need to implement an ‘insecure’ service, protocol, etc. then additional security measures must be in place to protect its use.</span> _(PCI DSS v3.2.1 ref 2.2.d, 2.2.3)_
* <span id="06FDC8FF-D357-420B-99A1-BA8DE7292B17">A documunted business justification of the approved services, protocols, ports, etc are maintained by the responsible Chief Systems Administrator.</span> _(PCI DSS v3.2.1 ref 1.1.6, 2.2.2)_
* <span id="3F875D16-0CCF-4C51-9AD0-418470668673">All and any changes to the network, including but not limited to configurations are subject to the company’s current Change Control Policy and related procedures and must include security review and clearance from the Chief Security Administrator. </span> _(PCI DSS v3.2.1 ref 1.1.1, 12.11)_
* <span id="F95FC922-CFC4-48C1-A3EE-9E3E9F2F6BB7">No confidential data, including cardholder data, is allowed to reside on equipment located in the DMZ. All such data must be on an internal network and segregated from the DMZ and untrusted networks. No access to internal networks and data is allowed except through the firewall. </span> _(PCI DSS v3.2.1 ref 1.3.7)_
* <span id="96C52B55-8F9B-4A81-9FAC-5C97AAFEEE6A">To protect the company’s internal private IP addresses it is important that these are only given out to third-parties where there is an approved business need. This is done via the Private IP Address Disclosure Procedure.</span> _(PCI DSS v3.2.1 ref 1.3.8b)_

### Physical equipment Out of Scope

* <span id="904B8C2D-0A78-4E6B-A8BD-8511A49E7E41">The Company does not maintain any consumer PII or CHD on physical hardware.</span>
* <span id="F30F6EAC-C937-4E3D-9A29-0FE51F23C7CB">Reasonable precautions should be taken with local storage, but the Company takes no special precautions to secure local devices. In particular, the Company does not maintain a restricted area per PCI standards. </span> _(PCI DSS v3.2.1 ref 9.1.3)_

### Physical equipment

* <span id="56143DE8-FF35-40CA-9EB8-3AFA397D31C5">All patches and fixes recommended by the vendors should applied in accordance with the Vulnerability Policy.</span>
