# Naming Conventions For IICS Artifacts
The following naming conventions are recommended for various IICS assets. These conventions will:
* Help to locate assets quickly when searching for them in IICS web designer.
* Provide an indication what the asset function is based on asset's name.
* Increase the readability when using IICS web designer.

| IICS Artifact| Naming Convention        |Examples |
|:-----------|:-------------|:-------------------------|
| Secure Agent Group |<ul><li>Use logical names for groups</li><li>Use uppercase, and use underscore to separate words</li><li>Use documented abbreviations</li><li>Name structure: `<group_logical_name>`</li></ul> |<ul>`ODMAS`</ul><ul>`DCS`</ul><ul>`BATCH_PROCESSING_AGENT_GROUP`</ul>|
| Secure Agent | <ul> <li>Name Secure Agents using logical names rather than host names</li><li>This way agents can be migrated easily to a different host</li><li>Use lowercase, and use underscore to separate words</li><li>Name structure: `<group>_<agent_logical_name>`</li></ul>|<ul>`ODMAS_test_agent`</ul><ul>`DCS_prod_agent`</ul><ul>`batch_processing_agent`</ul>|
| Connections|<ul><li>Use documented abbreviations and use upper case for abbreviations</li>Use logical names<li>Use underscore to separate words</li><li>Generic name structure: `<ConnectionType>_<logical_name>_<flag(s)>`<ul><li>Database: `<db_type>_<logical_name>_<schema_name>`</li><li>Flat File: `FF_<logical_name>_<folder_name>`</li></ul></li>| <ul>`ORCL_siebel_contact_center`</ul><ul>`FF_salesforce_lookups`</ul><ul>`ODBC_Accounting`</ul>|
| Tasks     |<ul><li>Use underscore to separate words</li><li>Include task operation in the name.</li><li>Use consistent naming for different type of tasks</li><li>Name structure: `DSS_<SOURCE>_<TARGET>_<NAME>_(INSERT&#124;UPDATE&#124;DELETE)_<VERSION>`</li></ul> |<ul>`DSS_Salesforce_Workday_Accounts_UPDATE_01`</ul><ul>`DSS_Salesforce_Workday_Accounts_UPDATE_02`</ul><ul>`DSS_Coupa_SAP_Requisition_NA_INSERT`</ul>|
| Mappings   | <ul><li>Use underscore to separate words</li><li>Use consistent naming for different type of mappings</li><li>Name structure:<ul><li>Mapping with single source: `M_<SOURCE>_<TARGET>_<NAME>_<VERSION>`</li><li>Mapping with multiple sources: `M_<SOURCE>_<ENTITY>_to_<TARGET>_<NAME>_<VERSION>`</li></ul></li></ul>|<ul>`M_CDI_Accounts_FF_incremental`</ul><ul>`M_CDI_Accounts_Contacts_to_SFDC`</ul>|
| Task Flows | <ul><li>Use underscore to separate words</li><li>Use consistent and readable(mix case) naming</li><li>Name structure: `TF_<NAME>_<VERSION>`</li></ul>|<ul>`TF_CDI_Acount_Contacts_to_SFDC`</ul><ul>`TF_Hierarchy_Change_Processing`</ul>|
| Schedulers | <ul><li>Use underscore to separate words</li><li>Use consistent and readable(mix case) naming</li><li>Name structure: `Schedule_<TIMEZONE>_<Frequency>_<TIME>`</li></ul>|<ul>`Schedule_Five_Minutes`</ul> <ul>`Schedule_PST_Daily_11PM`</ul>|
| Project/Folders | <ul><li>See [Projects Namespace](./shared-enviornment.md)</li><li>Name structure: `{group name} - {project name}`</li></ul>|<ul>`DoIT-AIS-Enterprise-Integration - Salesforce Integrations`</ul>|

Reference:
* [Informatica Cloud Naming Conventions](https://github.com/jbrazda/Informatica/blob/master/Guides/InformaticaCloud/naming_conventions.md)