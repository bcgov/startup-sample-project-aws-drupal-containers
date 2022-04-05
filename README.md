# startup-sample-project-aws-drupal-containers

This sample deploys a Drupal container into the AWS Secure Environment Accelelerator (ASEA). Review the supporting project [here](https://github.com/bcgov/startup-sample-project-aws-drupal-containers-terraform-modules/tree/main/aws) for setting up DB credentials.

The Drupal architecture used in this sample application mirrors what is deployed in this [blog post](https://aws.amazon.com/blogs/storage/deploy-serverless-drupal-applications-using-aws-fargate-and-amazon-efs/).


### Deployment

```
 terragrunt apply  -var 'target_aws_account_id=11111111111' -var 'target_env=dev' -var 'app_image=drupal:9.3-apache'
 ```

 ### ASEA Perimeter Security Account Configuration
 In the Perimeter AWS Account, an public Application Load Balancer (ALB) needs be configured to accept requests from the internet and forward to the internal ALB. The Security Group applied to the Perimeter public ALB should accept both port 80 and 443 traffic in its incoming rule configuration. However, on the ALB Listener Rule 443 traffic should be forwarded to the internal ALB. And an additional Listener Rule should be created to automatically redirect port 80 traffic to port 443. 