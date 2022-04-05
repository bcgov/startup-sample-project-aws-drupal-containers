
terraform {
  source = "git::https://github.com/bcgov/startup-sample-project-aws-drupal-containers-terraform-modules.git//?ref=v0.1"  
}


include {
  path = find_in_parent_folders()
}

generate "dev_tfvars" {
  path              = "dev.auto.tfvars"
  if_exists         = "overwrite"
  disable_signature = true
  contents          = <<-EOF
    acm_cert = ""
    cloudfront = true
    cloudfront_origin_domain = ""
    service_names = ["startup-sample-project"]
  EOF
}
