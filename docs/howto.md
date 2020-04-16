# How To Guides

- [How to migrate IICS assets from `test` to `prod`?](#how-to-migrate-iics-assets-from-test-to-prod-)
- [How to increase memory allocated for Secure Agent?](#how-to-increase-memory-allocated-for-secure-agent-)
- [How can I deploy my own Secure Agent?](#how-can-i-deploy-my-own-secure-agent-)

## How to migrate IICS assets from `test` to `prod` ?
[how-to-migrate]: #how-to-migrate-iics-assets-from-test-to-prod-
Use the process documented [here](https://git.doit.wisc.edu/interop/iics/iics-assets/blob/master/README.md) 
([reach out](../README.md) to us if you would like to access it).

## How to increase memory allocated for Secure Agent ?
[how-to-increase-mem]: #how-to-increase-memory-allocated-for-secure-agent-
Java heap size can be increased according to the [KB](https://kb.informatica.com/howto/6/Pages/17/336913.aspx) document from Informatica.

## How can I deploy my own Secure Agent ?
[which-firewall]: #how-can-i-deploy-my-own-secure-agent-
AIS/EI maintains a Docker [image](https://git.doit.wisc.edu/interop/iics/iics_secure_agent/blob/master/README.md#iics-secure-agent-docker-image) 
([reach out](../README.md) to us if you would like to access it), that can be used for your own Secure Agent deployments. See also Informatica [documentation](https://docs.informatica.com/integration-cloud/cloud-platform/current-version/administrator/runtime-environments/secure-agents.html) on Secure Agents.