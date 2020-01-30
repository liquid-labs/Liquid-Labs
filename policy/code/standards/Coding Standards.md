# Coding Standards

## Purpose and scope

This document deal with standards and guidelines regarding application and software code developed by the Company and her agents.

## Standards

### Documentation and style

* Inline documentation is included with each function, especially as new functions are added to the system or existing functions are modified. Refer to the [inline documentation guidelines](./Coding%20Standards.md#inline-documentation-guidelines) for guidance.
* Sensitive functions and code particularly related to the handling sensitive material (card holder data, authentication credentials, etc.) or critical operations should be clearly labeled as 'SENSITIVE' in the primary documentation and around key code blocks.
* Low level, syntactic code style is maintained and enforced primarily through automated code linting and static code analysis. The configurations of these system is deemed to be the style.

### Documentatino and style

* Developers are expected to be generally aware of major code conventions, but may relay on automated linting and smells to cure low level defects.

## Inline documentation guidelines

Documentation can be annoying. To make things easier, include basic explanations and notes up front, when methods are first added or being updated. It will only ever be more difficult.

Documentation need not be extensive or excessively formal. A simple one line summary or reference is often very helpful to future developers.

Focus your efforts where they matter. When dealing with sensitive sections of code, spend extra time to ensure the documentation is clear and complete. Whenever possible, make some notes on current and future risks, any pitfalls to avoid, as well as positive instruction on how to use the software. Working through the documentation is a good way to think through the code and security.

"Sensitive code" might deal with user authentication, handle private data, or be critical to system availability. Connection to external systems or services, such as a database or remote API are often vectors for attack and a potential source for leaks.

"Don't repeat yourself" is just as true for documentation as for code.
* When a functions purpose and behavior is fully explained somewhere else, it's preferable to make reference to the existing documentation rather than duplicating it. Link to the relevant documentation where possible.
* When implementing similar functions with different signatures or other such "minor" variations, it's encouraged to focus efforts on a single representative function. Then provide a short summary and link or make reference to the well documented function, explaining the local variation as necessary.
* Where tests are themselves semantic, as with `test('expect add(1, 1) yields 2', () => {...})` it is not necessary to add additional documentation. Test helper functions or tests which are not "self-documenting" should be documented.

In general functions should be small enough that they can be understood in light of the function documentation placed immediately before the function. Don't hesitate, however, to sprinkle helpful hints or explanations in with the code.
