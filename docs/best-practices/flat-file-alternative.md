Both AWS S3 and Box are excellent options for when you do not have easy access to the Secure Agent filesystem.

## Issues with flat file connector

The IICS flat file connector requires that you have file system access on the server that hosts the IICS Secure Agent. 
The support overhead of managing user accounts in the hosting server will present challenges as the number of users who would require use of the connector increases.
This can potentially introduce delays in project completion and provisioning/deprovisioning tasks.

[Flat file connection documentation](https://docs.informatica.com/integration-cloud/cloud-data-integration/current-version/data-integration-connections/connection-properties/flat-file-connections.html)

## AWS S3 as an Alternative
An alternative to flat file connector is to use AWS S3 connector for the source or target for your files. AWS S3 is Amazon's object storage service. You can store the files in S3 that you would otherwise store in the hosting server.
IICS provides a connector for AWS S3 that is provisioned in our IICS environments.

In order to use AWS S3 connector, you will require the following:
* An AWS account for your team. [UW Cloud Services](https://kb.wisc.edu/public-cloud/internal/page.php?id=65529) (Navigate to AWS Onboarding Survey to get started.)
* Knowledge of AWS S3 buckets. [AWS S3 Getting Started](https://docs.aws.amazon.com/AmazonS3/latest/gsg/GetStartedWithS3.html)
* Knowledge of AWS IAM Users. [AWS IAM Users](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users.html)
* Knowledge of AWS Access Keys. [AWS Access Keys](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)

After you have acquired an AWS account, you can create an IAM User with Read/Write permissions to AWS S3 Buckets in your account. 
If you are using AWS S3 only as a source, then you may only need Read permission. An AWS Access and Secret key can be generated for this IAM User which is then used in the IICS AWS S3 Connection Properties.

[IICS AWS S3 Connection Documentation](https://docs.informatica.com/integration-cloud/cloud-data-integration/current-version/data-integration-connections/connection-properties/amazon-s3-connection-properties.html)

### AWS S3 for testing and debugging integrations

AWS S3 provides a great mechanism to test pieces of a large ETL project. 
When an ETL project relies on multiple sources and transformations, small pieces of the transformation can be designed and tested by outputting to an S3 bucket for verification. 
Once the verification is successful, the next transformation can be designed and tested in the same fashion. 
This method can also be used for testing changes that need to be made on an ETL process. 
Parts that need to be changed can be duplicated and verified in an S3 bucket.

### WiscAlerts example

The [WiscAlerts example](../tutorials/wiscalerts/wiscalerts.md) describes a successful use of AWS S3 connector as a flat file connector alternative.

The Integration Platform team has implemented the integration using AWS S3 instead of relying on file system access for flat files.
In this integration, the team has created an AWS S3 connection as a target location for the different files that were required for the integration.
The team then created Mapping tasks that gathers information from Oracle Data sources using an Oracle connector and puts it in AWS S3 as a csv file.

The WiscAlerts example linked above describes the integration in finer detail and outlines the benefits and gaps of using AWS S3.

## Using Box as an Alternative
Box is a service that can be used to store files in a secure manner. See this [guide](https://kb.wisc.edu/33229) on how to
get started on using Box. IICS provides a Box connector that can be used as an alternative to using flat files. 
There is a [tutorial](../tutorials/box/box.md), on how to set up Box connector for moving flat files around.

## When to use AWS S3 vs Box
While both AWS S3 and Box are excellent alternatives instead of relying on file system access for flat file operations, 
following are few things you can consider when choosing between AWS S3 vs Box.

* Box is suitable for sensitive information (however it's not suitable for restricted data, see Box [terms of use](https://kb.wisc.edu/page.php?id=33978)).
* Box has a very small learning curve compared to AWS S3 and can be set up quickly. On the other hand AWS 
S3 (and how it fits in AWS system) has a learning curve.
* If you are already familiar with AWS S3 and already using it, then AWS S3 may be a better alternative.
* If you are using other AWS services, then AWS S3 will best fit in with those.   

## Training and Experimentation

For training and experimentation, flat files are an easy and effective way to learn IICS. When possible, you should use your local machine during training. 
If using a hosted Secure Agent for training purposes, then we recommend that you use IICS Box connector.

## Recommendation for using flat file connector

If there are limitations to effectively using AWS S3 or Box instead of flat files, we recommend that you host a Secure Agent on a machine that you manage.