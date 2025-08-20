terraform {
  required_version = ">= 1.0.0"

  backend "s3" {
    bucket       = "test-id-apnortheast2-tfstate"
    key          = "provisioning/terraform/platform/atlantis/terraform.tfstate"
    region       = "ap-northeast-2"
    encrypt      = true
    use_lockfile = true #S3 native locking
  }
}
