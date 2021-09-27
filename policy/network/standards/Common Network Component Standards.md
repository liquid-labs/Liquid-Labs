# Common Network Component Standards

## Purpose and Scope

This standard covers common requirements and standards regarding both Routers and Firewalls, which will be collectively referred to as "network components".

It is critical that network components are configured installed and managed in a secure and consistent manner in order to safeguard the systems and data connected by those networks. Proper network management is therefore an essential part of data and operational security.

These standards document the general security rules for the management of Company network components. They are based on industry best practices and are created with specific reference to the Center for Internet Security, PCI DSS, and SOC recommendations and requirements.

 This document is part of the [Network Security Framework](../Network%20Security%20Framework.md).

## Standards

### Installation

* <span id="ABC92EAF-9AAD-42A1-95DA-6DDDD3512AF8">All default vendor accounts and passwords are changed prior to deployment. Default accounts not being used are, where possible, removed or disabled. </span> _(PCI DSS v3.2.1 ref 2.1.a, 2.1.b)_

### Access

* <span id="76A4561B-9948-4D31-96B7-9B26299E6C0A">Access to production network resources and configurations is limited to Senior Network Engineers and the Security Officer.</span>
* <span id="FFBAE9E9-1445-4B62-BA3A-B2B5F0522716">Individual user accounts should be utilized for access to production network resources and configurations wherever possible.</span>
* <span id="F2C0436D-DC73-443E-8108-542D39C6948E">Where shared access accounts must be used to access production network resources and configurations, the shared credentials must only be accessible to Senior Network Engineers and the Security Officer.</span>

### Documentation

* <span id="2B0E6CA6-C0E3-41A0-9207-6A8896F23E18">The Production Network Diagram up to date and correctly represent the production network.</span> _(PCI DSS v3.1.2 ref 1.1.2.a)_
* <span id="2BACF830-0111-44BB-9CFA-7B96F044396D">Every enabled services, protocols, ports, etc. on a sensitive network documents the business need directly or by reference at the point in the configuration file where the service, etc. is enabled.</span> _(PCI DSS v3.2.1 ref 1.1.6, 2.2.d, 2.2.2)_
* <span id="5BE19F73-7F0D-4AF7-90E6-C95F92FC8F5C">Any allowed insecure services are clearly marked as such in the configurations with 'INSECURE'.</span> _(PCI DSS v3.1.2 ref 1.1.6.b, 1.2.1.a)_

### Configuration

* <span id="2FB47EBD-31DE-47FB-BA42-007B680BFD48">Production network components implement a "default deny" approach for all inbound and outbound traffic, allowing only explicitly authorized connections, services, etc. on an "as needed" basis.</span> _(PCI DSS v3.2.1 ref 1.2.1, 1.2.1.a, 1.1.6.a)_
* <span id="1D5F0ACE-B1EC-4DBB-8110-26CEA1F6983C">Implementation of the production DMZ in particular must ensure that inbound traffic is only allowed to publicly accessible services, protocols and ports. </span> _(PCI DSS v3.2.1 ref 1.3.1)_
* <span id="16391346-DA25-4A86-A9B7-056485917B38">New security requirements, vulnerabilities, and/or best practices are reviewed by the Chief Network Engineer and Security Officer and incorporated into sensitive network configurations every 6 months.</span> _(PCI DSS v3.2.1 ref 1.1.5.a, 1.1.7.a)_
* <span id="F8E59036-E686-48A7-B444-87C5D6461467">All internal network resources utilizes only private IPs.</span>
* <span id="48E947DF-D20D-46AD-86C1-588348A65098">All internal traffic is limited to valid, private IP ranges associated with an internal network segment or the DMZ.</span> _(PCI DSS v3.2.1 ref 1.3.2)_
* <span id="50F94B73-DA3D-447B-8671-CFB1749869CD">The DMZ only allows inbound requests originating from public IP addresses and blocks any requests originating from a private IP. This prevents spoofing of internal IPs. </span> _(PCI DSS v3.2.1 ref 1.3.3)_
* <span id="BF0548D7-A167-4FA5-B88A-19AD90584182">Any traffic outbound from a sensitive network must be specifically authorized; destination IP addresses and ports should be whitelisted whenever possible with whitelisted domains used where necessary.</span> _(PCI DSS v3.2.1 ref 1.3.4)_
* <span id="CC0F53DF-7F75-48B9-96AA-5933F90706DB">Inbound external connections are established at the DMZ and only established connections are forwarded to the internal network.</span> _(PCI DSS v3.2.1 ref 1.3.5)_
* <span id="46DE54C2-5F0C-4414-A542-E78E2349FED1">Network Address Translation (NAT) and Port Address Translation (PAT) technology are employed at the DMZ to prevent Company TCP/IP addresses from being used on the Internet. </span> _(PCI DSS v3.2.1 ref 1.3.7.a)_
* <span id="D072380C-90B2-43DE-9E3A-BA6413F6E30A">Disclosure of internal/private IP addresses by staff not permitted except as required by auditors or as part of support/troubleshooting efforts with hosting providers or similar. </span> _(PCI DSS v3.2.1 ref 1.3.7.b)_
* <span id="76C9F68B-2051-48A2-8487-AAC5918C47B1">Stateful Inspection/Dynamic Packet Filtering architecture is used to ensure that established connections from a legitimate source are allowed into the network.</span> _(PCI DSS v3.2.1 ref 1.3.5)_

### Change Control

* <span id="90ABA3DB-3720-441D-B539-C87E30BC6CC4">All changes sensitive network configurations must be processed via the company’s Change Management System to ensure formal approval is obtained and all testing successfully completed. </span> _(PCI DSS v3.2.1 ref 1.1.1)_
* <span id="2B14963E-E834-4BDC-857A-EF2F213E2962">Modification to sensitive network configurations must be reviewed by Senior Network Engineers.</span>
* <span id="5E6CB92E-BDB4-4870-A7BC-8492EA1C0330">In the normal course of events, sensitive network modifications are effected through a CI/CD process after all relevant change control procedures have been observed.</span>
* <span id="AE39E19F-2754-443A-8FF7-E90A3FEC290D">Manual/emergency modification of sensitive networks is made via the console port or via an encrypted session using strong cryptography and multi-factor authentication. </span> _(PCI DSS v3.2.1 ref 2.3)_
* <span id="56B66F31-50EC-42CF-A877-67779EFA2A4D">Administrative access to firewalls is controlled through access to the cloud services administrative console and the passwords must follow the Company’s Identification & Authentication Policy.</span> _(PCI DSS v3.2.1 ref 8)_
