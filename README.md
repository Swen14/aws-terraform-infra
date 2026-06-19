# AWS Terraform Infrastructure Project

## Overview

This project demonstrates Infrastructure as Code (IaC) using Terraform on AWS. The infrastructure is built using reusable Terraform modules and follows a production-style folder structure with separate backend, environments, and modules directories.

The project provisions:

* Remote Terraform State Storage using S3
* State Locking using DynamoDB
* Custom VPC
* Public and Private Subnets
* Internet Gateway
* Route Table and Associations
* Security Group
* EC2 Instance
* Application Load Balancer (ALB)
* Target Group
* Terraform Outputs

---

## Project Structure

```text
aws-terraform-infra/
│
├── backend/
│   ├── provider.tf
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   └── terraform.tfvars.example
│
├── environments/
│   └── dev/
│       ├── provider.tf
│       ├── backend.tf
│       ├── main.tf
│       ├── variables.tf
│       ├── outputs.tf
│       ├── terraform.tfvars
│       └── terraform.tfvars.example
│
├── modules/
│   ├── vpc/
│   ├── security-group/
│   ├── ec2/
│   └── alb/
│
├── screenshots/
│
├── .gitignore
└── README.md
```

---

## Architecture

```text
Internet
    │
    ▼
Application Load Balancer
    │
    ▼
Security Group
    │
    ▼
EC2 Instance
    │
    ▼
Public Subnet
    │
    ▼
VPC
```

Terraform State:

```text
Terraform
    │
    ▼
S3 Bucket (Remote State)
    │
    ▼
DynamoDB Table (State Locking)
```

---

## Technologies Used

* Terraform
* AWS EC2
* AWS VPC
* AWS Subnets
* AWS Internet Gateway
* AWS Route Tables
* AWS Security Groups
* AWS Application Load Balancer
* AWS S3
* AWS DynamoDB
* Git
* GitHub

---

## Terraform Workflow

Initialize Terraform:

```bash
terraform init
```

Validate Configuration:

```bash
terraform validate
```

View Execution Plan:

```bash
terraform plan
```

Create Infrastructure:

```bash
terraform apply
```

View Outputs:

```bash
terraform output
```

Destroy Infrastructure:

```bash
terraform destroy
```

---

## Remote State Management

The backend folder creates:

### S3 Bucket

Used to store:

* terraform.tfstate
* Terraform infrastructure state

Benefits:

* Centralized state management
* Team collaboration
* State backup

### DynamoDB Table

Used for:

* State locking

Benefits:

* Prevents multiple users from modifying infrastructure simultaneously
* Avoids state corruption

---

## Modules

### VPC Module

Creates:

* VPC
* Public Subnets
* Private Subnet
* Internet Gateway
* Route Table
* Route Table Associations

### Security Group Module

Creates:

* HTTP Rule (Port 80)
* SSH Rule (Port 22)
* Outbound Access Rules

### EC2 Module

Creates:

* EC2 Instance
* Public IP Association
* Security Group Attachment

### ALB Module

Creates:

* Application Load Balancer
* Target Group
* Listener
* Target Group Attachment

---

## Screenshots

### Backend Infrastructure

* 01-backend-s3-bucket-created.png
* 02-backend-versioning-enabled.png
* 03-backend-encryption-enabled.png
* 04-backend-public-access-blocked.png
* 05-backend-dynamodb-created.png
* 06-backend-terraform-output.png

### Development Environment

* 07-dev-vpc-created.png
* 08-dev-subnets-created.png
* 09-dev-internet-gateway-created.png
* 10-dev-route-table-created.png
* 11-dev-security-group-created.png
* 12-dev-ec2-created.png
* 13-dev-alb-created.png
* 14-dev-target-group-created.png
* 15-terraform-output.png

---

## Key Concepts Demonstrated

* Infrastructure as Code (IaC)
* Modular Terraform Design
* Remote State Management
* State Locking
* AWS Networking
* Terraform Variables
* Terraform Outputs
* Terraform Modules
* Git Version Control
* AWS Infrastructure Automation

---

## Learning Outcomes

Through this project, I learned:

* How Terraform manages infrastructure
* How remote state works
* Why state locking is important
* How Terraform modules improve reusability
* How AWS networking components connect together
* How to structure Terraform projects for real-world environments
* How to use Git and GitHub with Terraform projects
* How to provision AWS infrastructure using reusable modules

```
```
