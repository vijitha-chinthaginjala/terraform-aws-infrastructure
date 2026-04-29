provider "aws" {
  region = "us-east-1"
}

module "vpc" {
  source = "../../modules/vpc"

  environment         = "production"
  vpc_cidr            = "10.2.0.0/16"
  public_subnet_cidrs = ["10.2.1.0/24", "10.2.2.0/24"]
  availability_zones  = ["us-east-1a", "us-east-1b"]
}

module "ec2" {
  source = "../../modules/ec2"

  environment    = "production"
  instance_count = 3
  instance_type  = "t3.medium"
  subnet_ids     = module.vpc.public_subnet_ids
  vpc_id         = module.vpc.vpc_id
}

module "s3" {
  source = "../../modules/s3"

  environment = "production"
  bucket_name = "app-storage"
}
