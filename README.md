# startup-sample-project-aws-drupal-containers

This sample deploys a Drupal container into the AWS Secure Environment Accelelerator (ASEA). Review the supporting project [here](https://github.com/bcgov/startup-sample-project-aws-drupal-containers-terraform-modules/tree/main/aws) for setting up DB credentials.

The Drupal architecture used in this sample application mirrors what is deployed in this [blog post](https://aws.amazon.com/blogs/storage/deploy-serverless-drupal-applications-using-aws-fargate-and-amazon-efs/).

To deploy:
```
 terragrunt apply  -var 'target_aws_account_id=11111111111' -var 'target_env=dev' -var 'app_image=drupal:9.3-apache'
 ```