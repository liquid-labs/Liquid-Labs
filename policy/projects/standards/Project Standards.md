# Project Standards

## Purpose and scope

This document discusses standards around project creation, organization, and management.

## Standards

### Project Inventory

- <span id="9972BE87-DAAD-4355-9F7C-F3E52AB8E7C1">**Project Inventory**: The company shall maintain a Project Inventory which includes:
  - the project name,
  - the Project Managers,
  - summary,
  - sensitivity status, and
  - last audit date.
</span>
- <span id="72D40083-4642-4051-BBE6-05A55DEE439B">**Project Inventory manager**: The <role>Project Inventory Manager</role> shall be responsible for the maintenance and upkeep of the Project Inventory.</span>

## Project operational status guidelines

A _prototype_ or _alpha_ project is purely internal and has no public visibility. These projects may use unsupported (non-standard) tools and tool combinations. In particular, they are not required follow standard change management standards and need not (though may) utilize tasks, code reviews, etc. All projects, including prototype projects must store code and track changes using a Company controlled version control system. Prototype projects may move into beat, production, or archived status.

We tend to use the term 'prototype' in the policy as that seems the most clear. However, the term 'alpha' is useful because it so happens the terms 'alpha' and 'beta' sort properly and work with semantic versioning.

A _beta_ project is in pre-production testing and may have limited, controlled public visibility. Beta projects are subject to all Company standards unless they are strictly limited to using mock data. A beta project need not be publicly visible, but is rather considered a dress rehearsal for a full "production" product. Beta projects may move into prototype, production, or archived status.

A _production_ project is publicly available, generally stable, and robustly maintained. This means that any public interface (either API, GUI, CLI, etc.) is considered "in use" and changes are carefully considered for end-user impact and generally accompanied by a transition and support plan. Production projects may move to sunset or archived status in general, though any project with existing end-user commitments must move to sunset until all external commitments are met.

A _sunset_ project is a production product which will be decommissioned and/or be de-supported by the Company soon. Generally, a sunset date is provided but not required. Sunset users are generally supported according to existing contracts and other requirements, but otherwise should not expect the full and robust support given to a production product. A sunset project may move to production or archived status.

An _archived_ project is no longer supported or under active development by the Company. An archived project may move to prototype, beta, or production status.

## Version history

Date | Change description | Ticket | Ver. | Author | Reviewed by
-----|--------------------|--------|------------|--------|-------------
