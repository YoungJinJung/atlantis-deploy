# VPC - use these parameters to create new VPC resources
# 10.0.0.0 - 10.255.255.255 (10/8 접두사)	
# 172.16.0.0 - 172.31.255.255 (172.16/12 접두사)	
# 192.168.0.0 - 192.168.255.255 (192.168/16 접두사)	
cidr = "10.200.0.0/16"

azs = ["ap-northeast-2a", "ap-northeast-2c"]

private_subnets = ["10.200.1.0/24", "10.200.2.0/24"]

public_subnets = ["10.200.21.0/24", "10.200.22.0/24"]

# VPC - use these parameters to use existing VPC resources
# vpc_id = "vpc-1651acf1"
# private_subnet_ids = ["subnet-1fe3d837", "subnet-129d66ab"]
# public_subnet_ids = ["subnet-1211eef5", "subnet-163466ab"]

# DNS
route53_zone_name = "terraform.devart.tv"
route53_zone_id   = "Z09601362JG8MSL8LJAHR"

# ACM (SSL certificate)
# Specify ARN of an existing certificate or new one will be created and validated using Route53 DNS:
certificate_arn = "arn:aws:acm:ap-northeast-2:066346343248:certificate/10d501d4-a8c8-4358-9996-98060a907e47"

# ECS Service and Task
ecs_service_assign_public_ip = true

# Atlantis
atlantis_allowed_repo_names = ["test-provisioning"]
atlantis_repo_whitelist     = ["github.com/YoungJinJung/*"]

# Specify one of the following block.
# For Github
atlantis_github_user = "YoungJinJung"

# For Gitlab
atlantis_gitlab_user       = ""
atlantis_gitlab_user_token = ""

# For Bitbucket
atlantis_bitbucket_user       = ""
atlantis_bitbucket_user_token = ""

# For Bitbucket on prem (Stash)
# atlantis_bitbucket_base_url = ""

atlantis_version="v0.35.1"

# Tags
tags = {
  Name = "atlantis"
}
