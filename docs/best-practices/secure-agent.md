# Secure Agent

A Secure Agent is a Java program that runs integration tasks and enables secure communication across the firewall between our organization and 
IICS. More details can be found [here](https://docs.informatica.com/integration-cloud/cloud-platform/current-version/administrator/runtime-environments/secure-agents.html).

## Costs

Secure Agents are licensed at a per-Secure-Agent rate.
Secure Agents are installed at one Secure Agent per VM/host, or one Secure Agent per Docker Container.
For more information on the exact cost of a Secure Agent license, please contact us.

## Responsibilities

By running a Secure Agent, you are responsible for ensuring the availability of the Secure Agent program and its underlying VM/host.
The Secure Agent program is upgraded automatically by Informatica, but you are responsible for managing/patching the underlying operating system.

## Recommendations

The DoIT Integration Platform team has experience managing secure agents.
We run our secure agent in a Docker container on Linux, hosted by Amazon Web Services (AWS).
[The Secure Agent Docker image is available here](https://git.doit.wisc.edu/interop/iics/iics_secure_agent) if you want to build and try it yourself.
We use AWS Elastic Container Service (ECS) to manage the secure agent deployment environment.
By allowing ECS to run the Secure Agent container, we can make sure that the Secure Agent is always running because ECS would bring up a new instance if the current instance crashed.

From our experience of running secure agents, we recommend the following when running your own secure agent:

- **Reduce file system level access to the Secure Agent host:** Although access to the local file system is sometimes necessary to troubleshoot integrations, we recommend avoiding using the secure agent's file system for integrations, where possible.
For integrations that deal with flat files, using Amazon S3 along with the [IICS S3 connector](https://docs.informatica.com/integration-cloud/cloud-data-integration-connectors/current-version/amazon-s3-connector/preface.html) allows an integration to use flat files without being closely tied to the underlying file system of the Secure Agent host.
By using S3 instead of the Secure Agent file system, permissions and user accounts can be managed in AWS. AWS offers more self-service and automated interfaces compared to managing user accounts accounts and permissions directly in a Secure Agent host.
- **Avoid maintaining state in a Secure Agent host:** Related to the ["Pets vs. Cattle" analogy](https://www.slideshare.net/randybias/the-history-of-pets-vs-cattle-and-using-it-properly), we recommend treating Secure Agents as ephemeral components of the overall integration architecture.
Accordingly, make sure configuration files and log files are stored externally to the Secure Agent host.
The DoIT Integration platform team uses AWS Elastic File System to persist configuration files.
By doing this, we can destroy and replace our Secure Agent container, or underlying EC2 host, with confidence that the Secure Agent will start and operate in a consistent manner.

## High Availability

While a single Secure Agent is most cost effective, it does introduce a risk if the Secure Agent or underlying host were to fail.
By running the Secure Agent in a container platform such as AWS Elastic Container Service (ECS), you can make sure that a single Secure Agent is always running.
If the Secure Agent were to crash, ECS can automatically start a new container.

This containerized single Secure Agent architecture is appropriate for scheduled ETL jobs, but event-driven integrations, such as integrations built on Cloud Application Integration (CAI), have different requirements.
For event-driven integrations, we recommend running at least two Secure Agents in parallel.
If one Secure Agent were to crash, the other would be able to handle requests while the a new Secure Agent is brought up.

For more information on Secure Agents with Cloud Application Integration, please [see this documentation from Informatica](https://kb.informatica.com/faq/7/pages/19/514162.aspx).
