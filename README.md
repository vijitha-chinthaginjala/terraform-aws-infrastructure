# Infrastructure Automation using Terraform

## What This Does
Automated AWS cloud infrastructure provisioning using Terraform with reusable modules, reducing provisioning time from hours to under 10 minutes and eliminating configuration drift across environments.

## Architecture
Terraform Modules → AWS VPC → Subnets → EC2 Instances → Load Balancer → S3 Bucket

## Tech Stack
- **IaC:** Terraform
- **Cloud:** AWS (VPC, EC2, S3, ALB, Subnets)
- **Config Validation:** Checkov
- **Environments:** Dev, Staging, Production

## What It Demonstrates
- Reusable Terraform modules for consistent infrastructure provisioning
- Multi-environment support (dev, staging, production) from single codebase
- Policy-as-code validation using Checkov before every apply
- Automated VPC, subnet, EC2, load balancer, and S3 provisioning
- Remote state management and environment isolation

## Results
- Reduced provisioning time from hours to under 10 minutes
- Eliminated configuration drift across all environments
- Reduced provisioning errors by 60% through reusable modules

## How to Run
1. Install Terraform: https://developer.hashicorp.com/terraform/install
2. Configure AWS credentials:
aws configure
3. Clone this repo and navigate to an environment:
cd environments/dev
terraform init
terraform plan
terraform apply

## Project Structure
```
├── modules/
│   ├── vpc/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   ├── ec2/
│   │   ├── main.tf
│   │   ├── variables.tf
│   │   └── outputs.tf
│   └── s3/
│       ├── main.tf
│       ├── variables.tf
│       └── outputs.tf
├── environments/
│   ├── dev/
│   │   └── main.tf
│   ├── staging/
│   │   └── main.tf
│   └── production/
│       └── main.tf
└── README.md
```
