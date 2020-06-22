# Using AWS S3 as a Flat file Alternative

It is inevitable that certain integrations will involve using flat files for import or export. However, when applicable, we recommend using AWS S3 as an alternative option. 
AWS S3 is an excellent option for when you do not have easy access to the Secure Agent filesystem.

## Issues with Flat file connector

The IICS Flat file connector requires that you have file system access on the server that hosts the IICS Secure Agent. 
The support overhead of managing user accounts in the hosting server will present challenges as the number of users who would require use of the connector increases.
This can potentially introduce delays in project completion and provisioning/deprovisioning tasks.

[Flat File connection documentation](https://docs.informatica.com/integration-cloud/cloud-data-integration/current-version/data-integration-connections/connection-properties/flat-file-connections.html)

## AWS S3 as an Alternative
An alternative to flat file connector is to use AWS S3 as the source or target for your files. AWS S3 is Amazon's object storage service. You can store the files in S3 that you would otherwise store in the hosting server.
IICS provides a connector for AWS S3 that is provisioned in our IICS environments.

In order to use AWS S3 connector, you will require the following:
* An AWS account for your team. [UW Cloud Services](https://kb.wisc.edu/public-cloud/internal/page.php?id=65529) ([Form for requesting AWS Account](https://uwmadison.co1.qualtrics.com/jfe/form/SV_5vgt2bsYpcHvviB?Q_JFE=qdg))
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

## WiscAlerts example

The [WiscAlerts example](./tutorials/wiscalerts/wiscalerts.md) describes a successful use of AWS S3 as a Flat file alternative.

EI Staff have implemented the integration using AWS S3 instead of relying on flat files.
In this integration, the team has created an AWS S3 connection as a target location for the different files that were required for the integration.
The team then created Mapping tasks that gathers information from Oracle Data sources using an Oracle Connector and puts it in AWS S3 as a csv file.

The WiscAlerts example linked above describes the integration in finer detail and outlines the benefits and gaps of using AWS S3.

## Training and Experimentation

For training and experimentation, Flat files are an easy and effective way to learn IICS. When possible, you should use your local machine during training. 
If using a hosted Secure Agent for training purposes, then we recommend that you use AWS S3.

## Recommendation for using Flat File connector

If there are limitations to effectively using AWS S3 instead of Flat files. We recommend that you host a secure agent on a machine that you can manage.