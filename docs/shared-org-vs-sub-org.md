# Shared Orgs and Sub-Orgs

Informatica Intelligent Cloud Services (IICS) uses the concept of an organization (an "org") as the highest level container for objects, which include assets, projects, connections.
Orgs also contain a unique set of users and user groups.
When on-boarding to IICS, a decision will have to be made on whether to use the existing org for UW-Madison, or use a separate org (a "sub-org").

The purpose of this document is to help prepare for this decision.

## Organizational Hierarchy

IICS has a hierarchy structure to ensure separation between teams and departments. 

### Parent Orgs

A parent org is the highest level concept in IICS. A parent org can contain 1-to-many sub-orgs and user groups.

### Sub-Orgs

A sub-org is functionally equivalent to a parent org, except some aspects are inherited from the parent org.
For example, a sub-org inherits licenses and connectors from the parent org.
Parent org secure agent groups can also be shared to sub-orgs.

Integrations can be monitored from the parent org to all sub-orgs, allowing the ability to get operational information for all environments in a single view.

A sub-org can not contain a sub-org. A sub-org can be created from within a parent org, or an existing org can be linked to a parent org to convert it into a sub-org.

### User Group

A user group allows further separation/isolation within an org.
If fine-grained authorization is needed within an org, a user group can be applied to objects (e.g. assets, connections, secure agents) to limit access to a subset of org users.

If no user group permissions are applied to an object, everyone within the org can access it.

User groups cannot contain other user groups.

## Options

### Use the Shared Org

This is the default and most commonly used option.
For example, DCS, Admissions, SMPH, and DoIT-AIS use the same org per each deployment environment: one org for test and one org for prod.
We use user groups to separate access control between projects and assets.

There is no extra cost to go this route, but there are some drawbacks to consider:

- User group permissions are not applied by default: Users must remember to apply user group permissions to their objects, otherwise the entire org has full read-write access to those objects.
- Connections and projects are visible in the list of all connections/projects, even if those objects have user group permissions on them.
As a result, you will see other departments' projects and connections when browsing in the user interface, or when selecting a connection from dropdown menus.
To help organize your own objects, we recommend namespacing them.
See the [Best Practices](./best-practices.md) for more information.
- There are two parent orgs: one for test and one for production.
This may be a drawback for some applications that need more development environments (e.g. dev, QA, staging).
Objects can be named or organized to indicate a specific environment (e.g. "dev-mapping", "dev-project"), but having multiple development environments represented in a single org is not recommended.

### Use a Separate Org with Sub-Orgs

This option involves creating a new parent org with sub-orgs contained within it.
The parent org would represent the production environment, with each sub-org representing a non-production environment.
For example, you might have a sub-org for dev, a sub-org for test, and then the parent org for production.

Unlike using the shared org, using this multi-org approach has extra financial costs. Depending on your needs, the Integration Platform Team might be able to help cover the extra cost. Please [contact us](mailto:doit-integration-platform@office365.wisc.edu) if this is something you would like to explore.

Here are cases when using this multi-org approach would be recommended:

- More than one non-prod environment is needed, since the shared org approach only provides one test and one prod environment.
- Many integrations are being built, requiring many objects. As a general rule, if you have over 30 projects or connections, this would be better managed by having your own org rather than using the shared org.