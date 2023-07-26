# Release Standards

## Purpose and scope

This document discusses standards around project release management.

## Standards

### Roles

- <span id="E285B287-AB3F-49C2-86C2-31B2046D6918">The designated <role>Release Manager</role> is responsible for verifying the release conforms to these standards.</span>
- <span id="0D0880CD-36FF-487D-9B35-759498849DDC">The project's <role>Project Manager</role> is responsible for assigning a <role>Release Manager</role> for the project in general or a particular release.</span>
- <span id="39A37493-A92B-41D4-AAF8-DF03C1FB4A8B">A production release is initiated when the <role>Project Manager</role> creates a release ticket, which is assigned to the release's designated <role>Release Manager</role>.</span>

### Release requirements

- <span id="DA6989E8-AFAE-4DC6-B397-AB092DF65F33">Each release is associated with a release ticket containing:
  - the date and time the ticket was created,
  - the date and approximate time the release completed,
  - the git version hash of the release,
  - a reference to the [updated changelog](#7236AAA6-D232-4865-805E-790CD56F1811),
  - the current or acting <role>Product Manager</role>, and
  - the deseginated <role>Release Manager</role>.
</span>
- <span id="7236AAA6-D232-4865-805E-790CD56F1811">A changelog entry giving a summary of changes made since the last release, and linking to all PRs in the current release, is added to the project changelog.</span>
