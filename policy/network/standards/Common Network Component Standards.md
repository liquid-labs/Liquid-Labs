
# Common Network Component Standards

## Purpose and Scope

This standard covers common requirements and standards regarding both Routers and Firewalls, which will be collectively referred to as "network components".

It is critical that network components are configured installed and managed in a secure and consistent manner in order to safeguard the systems and data connected by those networks. Proper network management is therefore an essential part of data and operational security.

These standards document the general security rules for the management of Company network components. They are based on industry best practices and are created with specific reference to the Center for Internet Security, PCI DSS, and SOC recommendations and requirements.

 This document is part of the [Network Security Framework](../Network%20Security%20Framework.md).

## Standards




### Installation

* Physical components of sensitive networks are installed in a secure and restricted area.
* Virtual components of sensitive networks are hosted by a PCI DSS certified cloud service provider.
* All default vendor accounts and settings are changed prior to deployment. Default accounts not being used are, where possible, removed or disabled. 

### Access

* Access to production network resources and configurations is limited to Senior Network Engineers and the Security Officer.
* Individual user accounts should be utilized for access to production network resources and configurations wherever possible.
* Where shared access accounts must be used to access production network resources and configurations, the shared credentials must only be accessible to Senior Network Engineers and the Security Officer.

### Topology

* All traffic from untrusted networks and the public Internet in particular is routed through a DMZ and all internal (trusted) network components will only accept connections from the DMZ.
* A firewall is implemented at each Internet connection and between any DMZ and internal networks.

### Documentation

* The Production Network Diagram up to date and correctly represent the production network.
* Every enabled services, protocols, ports, etc. on a sensitive network documents the business need directly or by reference at the point in the configuration file where the service, etc. is enabled.
* Any allowed insecure services are clearly marked as such in the configurations with 'INSECURE'.

### Configuration

* Production network components implement a "default deny" approach for all inbound and outbound traffic, allowing only explicitly authorized connections, services, etc. on an "as needed" basis.
* Inbound and outbound traffic is restricted to that traffic necessary to implement product functionality and adheres to Company Policy.
* Implementation of the production DMZ in particular must ensure that inbound traffic is only allowed to publicly accessible services, protocols and ports. 
* New security requirements, vulnerabilities, and/or best practices are reviewed by the Chief Network Engineer and Security Officer and incorporated into sensitive network configurations every 6 months.
* Inbound traffic to any given host is limited to trusted, internal network IPs and DMZ IPs. Thus, all Internet traffic must route through the DMZ.
* All traffic inbound to the DMZ from an untrusted network, and especially the Internet and any public network, presenting an internal IP address is blocked; i.e., anti-spoofing measures are in place. 
* Any traffic outbound from a sensitive network must be specifically authorized; destination IP addresses and ports should be whitelisted whenever possible with whitelisted domains used where necessary.
* Network Address Translation (NAT) and Port Address Translation (PAT) technology are employed at the DMZ to prevent Company TCP/IP addresses from being used on the Internet. 
* Disclosure of internal/private IP addresses by staff not permitted except as required by auditors or as part of support/troubleshooting efforts with hosting providers or similar. 
* Stateful Inspection/Dynamic Packet Filtering architecture is used to ensure that established connections from a legitimate source are allowed into the network.
* The active configurations for all network resources matches the current, released configurations.

### Change Control

* All changes sensitive network configurations must be processed via the company’s Change Management System to ensure formal approval is obtained and all testing successfully completed. 
* Modification to sensitive network configurations must be reviewed by Senior Network Engineers.
* In the normal course of events, sensitive network modifications are effected through a CI/CD process after all relevant change control procedures have been observed.
* Manual/emergency modification of sensitive networks is made via the console port or via an encrypted session using strong cryptography and multi-factor authentication. 
* Administrative access to firewalls is controlled through access to the cloud services administrative console and the passwords must follow the Company’s Identification & Authentication Policy.


