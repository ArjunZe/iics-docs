# How To Guides

- [How to migrate IICS assets from `test` to `prod`?](#how-to-migrate-iics-assets-from-test-to-prod-)
- [How to increase memory allocated for Secure Agent?](#how-to-increase-memory-allocated-for-secure-agent-)
- [How can I deploy my own Secure Agent?](#how-can-i-deploy-my-own-secure-agent-)
- [How to create a Manifest group for your team for access control?](#how-to-create-a-manifest-group-for-your-team-for-access-control)
- [How to access two IICS Orgs/Environments at the same time?](#how-to-access-two-iics-orgsenvironments-at-the-same-time)

## How to migrate IICS assets from `test` to `prod` ?
[how-to-migrate]: #how-to-migrate-iics-assets-from-test-to-prod-
Use the process documented [here](https://git.doit.wisc.edu/interop/iics/iics-assets/blob/master/README.md) 
([reach out](../README.md) to us if you would like to access it).

## How to increase memory allocated for Secure Agent ?
[how-to-increase-mem]: #how-to-increase-memory-allocated-for-secure-agent-
Java heap size can be increased according to the [KB](https://kb.informatica.com/howto/6/Pages/17/336913.aspx) document from Informatica.

## How can I deploy my own Secure Agent ?
[which-firewall]: #how-can-i-deploy-my-own-secure-agent-
[AIS/EI maintains a Docker image](https://git.doit.wisc.edu/interop/iics/iics_secure_agent/blob/master/README.md#iics-secure-agent-docker-image) that can be used for your own Secure Agent deployments.
See also Informatica [documentation](https://docs.informatica.com/integration-cloud/cloud-platform/current-version/administrator/runtime-environments/secure-agents.html) on Secure Agents.

## How to create a Manifest group for your team for access control?
[manifest-group]: #how-to-create-a-manifest-group-for-your-team-for-access-control
DoIT EI uses Manifest groups to give teams access to the UW Madison IICS environment.

**Provisioning a team**:

* [ ] You will need to have a Manifest folder in order to create a group. If you don't have an existing folder please follow the instructions found [here](https://kb.wisc.edu/page.php?id=27783) to create a Manifest folder.

* [ ] Please follow the instructions found [here](https://kb.wisc.edu/page.php?id=25878) on how to create a Manifest Group.
    
    To keep Manifest groups organized and easily identifiable, we recommend that you prefix the Manifest group name with the name of your department. Example: "DoIT-AIS-Enterprise-Integration-IICS"

* [ ] After the Manifest group has been created you may then add your team members. Please read the document on [Managing Manifest Group Members](https://kb.wisc.edu/page.php?id=25882).

* [ ] Once you have added the required members please email doit-integration-platform@office365.wisc.edu with the Manifest group path. Example: uw:org:ais:DoIT-AIS-Enterprise-Integration-IICS.

    DoIT EI will notify you when we have provided necessary access to the Manifest group. We will also provide you with an IICS User Group name which you will use to restrict access to your team's assets in IICS: 
    [Use user groups to control access](best-practices.md#use-user-groups-to-control-access)

* [ ] Each member of the Manifest group will need to log in to each IICS environment (e.g. test and production) using their UW Madison NetId, which will create an IICS user account for them automatically.

* [ ] Please let DoIT EI know when all group members have logged in once. We will then assign the IICS user accounts to the IICS User Group that was provided to you.

**Removing users**:

* [ ] To remove an IICS user from your IICS User Group, delete the member in your Manifest Group. Please read the document on [Managing Manifest Group Members](https://kb.wisc.edu/page.php?id=25882).

* [ ] Once you have removed the required members please email doit-integration-platform@office365.wisc.edu with the IICS User Group name, and the NetId of the member to remove. DoIT EI will notify you when we have removed the user from your IICS User Group.

## How to access two IICS Orgs/Environments at the same time?
[access-multiple-envs]: #how-to-access-two-iics-orgsenvironments-at-the-same-time
It is not possible to access multiple IICS Orgs/Environments in a single browser session as login information is cached during the session. The following methods can be used if you require access to multiple Orgs/Environments:
1. **Use multiple browsers**: Login to one Org/Environment in one browser (eg. Google Chrome), and use another browser (eg. Firefox) to login to another Org/Environment.
1. **Private/Incognito mode**: Login to one Org/Environment in your normal browser window, and use a private/incognito browser window to login to another Org/Environment.

[HOW TO: Use two IICS ORGs / Environments at same time](https://kb.informatica.com/howto/6/Pages/23/583317.aspx)