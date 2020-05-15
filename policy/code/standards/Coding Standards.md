# Coding Standards

## Purpose and scope

This document deal with standards and guidelines regarding application and software code developed by the Company and her agents.

## Standards
_(PCI DSS v3.2.1 ref 6.3.a, 6.3.c)_

### Documentation and style

* <a id="886F3E0B-DAA3-4811-AFFD-C70CD91E5F45">Inline documentation is included with each function, especially as new functions are added to the system or existing functions are modified. Refer to the [inline documentation guidelines](./Coding%20Standards.md#inline-documentation-guidelines) for guidance.</a>
* <a id="1B5FB74C-176E-4B24-9415-C14D1A650A38">Sensitive functions and code particularly related to the handling sensitive material (card holder data, authentication credentials, etc.) or critical operations should be clearly labeled as 'SENSITIVE' in the primary documentation and around key code blocks.</a>
* <a id="960D808A-29D7-48FF-9645-FC84712B9A4C">Low level, syntactic code style is maintained and enforced primarily through automated code linting and static code analysis. The configurations of these system is deemed to be the style.</a>
* <a id="322D6143-A992-42C3-A681-6CD34F6DAB40">Developers are expected to be generally aware of major code conventions, but may relay on automated linting and smells to cure low level defects.</a>
* <a id="EF8FC9E6-5B81-4085-B972-17DE496C99F9">Generally avoid deep control-block nesting of 3 levels or more. Use 'early return' and alternative control structures where possible and abstract inner logic into separate functions as appropriate. Refer to [these guidelines](https://en.wikibooks.org/wiki/Computer_Programming/Coding_Style/Minimize_nesting) for further details.</a>

### Privacy awareness

* <a id="90FC74C2-B04A-4372-BA01-90CED0B0DAED">Log, history, trace files, and the like should under no circumstances contain sensitive data, including particularly any transaction data and user names or other personally identifiable data. Opaque reference numbers, such as an internal ID, may be used to reference individuals and transactions.</a> _(PCI DSS v3.2.1 ref 3.2.c, 3.2.1, 3.2.2, 3.2.3)_

### Secure coding

* <a id="3404EDD0-4286-40F9-923B-1605872A526E">Any user input, and also queries in general, should be properly escaped using an industry standard, well tested library in order to prevent an 'injection attack'. In particular, SQL queries must make used of prepared statements/stored procedures for all queries.</a> _(PCI DSS v3.2.1 ref 6.5.1, 6.5.6, 6.5.a, 8.7.a, 8.7.b)_
* <a id="6B70B14E-CDB8-47C4-9639-2A29D50A1C36">In production environments, accounts used to log into services are only used for that purpose and separate from all user accounts.</a> _(PCI DSS v3.2.1 ref 8.7.c)_
* <a id="377A1D9F-9DAD-450F-8A64-BF75DA26060F">Communications with any external system are implemented with special care and according to company [system communications guidelines](#system-communication-guidelines).</a> _(PCI DSS v3.2.1 ref 6.5.4, 6.5.6, 6.5.a)_
* <a id="07CBE147-0620-4DE9-92C7-81A97C21A85D">Error handling is implemented with special care and according to company [error handling guidelines](#error-hanadling-guidelines)</a> _(PCI DSS v3.2.1 ref 6.5.6, 6.5.5, 6.5.a)_
* <a id="75BD02E9-EDEB-4895-9190-5A9F4F4D957D">Special care is taking when referencing objects within the system and that references are exposed according to the [object reference guidelines](#object-reference-guidelines).</a> _(PCI DSS v3.2.1 ref 6.5.6, 6.5.8, 6.5.a)_
* <a id="D062AE4A-C6EB-4CA2-811B-A6B0D76B9454">Authentication and session management code must be handled with special care and implemented according to company [end user authentication guidelines](#end-user-authentication-guidelines).</a> _(PCI DSS v3.2.1 ref 6.5.6, 6.5.10, 6.5.a)_
* <a id="B0A17019-2AF3-4409-8A64-E95ACF3F646B">Administrative user sessions must be invalidated and, if possible, the screen refreshed after 15 minutes of inactivity. End-user sessions must be invalidated after 15 minutes or re-validated every 15 minutes the end-user attempts to access or update sensitive information, such as an account profile containing the user's address, billing history, password change, etc.</a> _(PCI DSS v3.2.1 ref 8.1.8, 8.2.2)_
* <a id="CE05D118-9F54-4EF1-BD5A-8F469C329248">Strong cryptography, implemented according to company [programatic cryptography guidelines](#programatic-cryptography-guidelines) is used to render all user access credentials unreadable.</a> _(PCI DSS v3.2.1 ref 8.2.1)_
* <a id="780EC6DC-A0FD-4A0F-8787-F24160CB7317">Administrative and end-user user passwords rules must require an entropy of 65.5; e.g., 11 alphanumeric characters, 10 random ASCII characters, or 4 random words from an 85,000 word dictionary (about 40% all English words).</a> _(PCI DSS v3.2.1 ref 8.2.3)_
* <a id="F5E7BF42-496C-461D-95BF-8A496BB25165">According to current best practices, forced password changes should be triggered by indicators, events, user-self audits, or other mechanisms. With strong password requirements, forced password rotation only due to the passage of time is contraindicated.</a> _(PCI DSS v3.2.1 ref 8.2.4)_
* <a id="158356C9-A43D-4EB6-9CFB-B55DDA8988ED">When a password is reset, the user is required to change the password at their next login.</a> _(PCI DSS v3.2.1 ref 8.2.6)_

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



## System communication guidelines
UNDEFINED

## Error handling guidelines

UNDEFINED


## Object reference guidelines
Object references in general must use a randomly assigned GUID or functionally equivalent random identifier. This ensures that links are not "guessable" and that links don't carry potentially damaging information such as:
```
https://acmebank.com/user-123734/accounts/my-secret-tax-haven
```

Of course, nicknames are fine. Nick names, however, are only displayed to the user and never in links.




## End user authentication guidelines
UNDEFINED
