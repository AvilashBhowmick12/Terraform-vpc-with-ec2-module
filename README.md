[![Terraform Validate](https://github.com/AvilashBhowmick12/Terraform-vpc-with-ec2-module/actions/workflows/terraform-validate.yml/badge.svg?branch=main)](https://github.com/AvilashBhowmick12/Terraform-vpc-with-ec2-module/actions/workflows/terraform-validate.yml)

# Terraform AWS EC2 Infrastructure from Scratch

## 📌 Project Overview

This project demonstrates how to provision AWS infrastructure **from scratch** using **Terraform**, following Infrastructure‑as‑Code (IaC) best practices.

The setup includes:
- Custom VPC creation
- Public and private subnets
- Route tables and Internet Gateway
- Security Groups with controlled access
- EC2 instance deployment
- IAM Role attachment for Terraform execution
- Modular Terraform code structure

Terraform is executed **from an EC2 instance** using an **IAM role**, without hardcoding AWS credentials.

---

## 🧱 Components & Services Used

### ✅ AWS Services
- Amazon EC2
- Amazon VPC
- Subnets (Public & Private)
- Internet Gateway
- Route Tables
- Security Groups
- IAM (Role & Policies)

### ✅ Terraform Concepts
- Modules
- Variables
- Outputs
- State management
- Provider configuration
- Dependency graph

---

## 🛠️ What I Did

1. Installed Terraform on an EC2 instance
2. Created a modular Terraform project structure
3. Built a VPC with:
   - 2 public subnets
   - 1 private subnet
4. Configured:
   - Public route table with Internet Gateway
   - Private route table without internet access
5. Created a security group allowing:
   - SSH (22)
   - HTTP (80)
   - HTTPS (443)
   - ICMP (Ping)
6. Deployed an EC2 instance in a public subnet
7. Used an **existing key pair** (`terraform-new`)
8. Attached an IAM role to the Terraform runner EC2
9. Successfully applied and verified infrastructure
10. Connected to the EC2 instance via SSH

---

## 🔐 Security Mandates to Maintain

### ✅ IAM Best Practices
- Attach IAM Role to EC2 instead of using static credentials
- Avoid hardcoding AWS access keys

### ✅ Supported Authentication Methods
- IAM Role (recommended)
- `aws configure` (only for local testing)

---

## 👤 IAM Role Configuration

- **Service**: EC2
- **Role Name**: `Terraform-EC2-Execution-Role`
- **Permissions**:
  - `AmazonEC2FullAccess`
  - `AmazonVPCFullAccess`

This allows Terraform to manage EC2 and VPC resources securely.

---

## 📂 Folder Structure

```text
terraform-script/
├── main.tf
├── provider.tf
├── variables.tf
├── outputs.tf
├── terraform.tfstate
├── scripts-terraform-steps.md
└── modules/
    ├── vpc/
    │   ├── main.tf
    │   └── outputs.tf
    └── ec2/
        ├── main.tf
        ├── variables.tf
        └── outputs.tf

```
---
## 👨‍💻 Scripts for terraform installation

### Install Terraform on Amazon Linux
```
# Install yum-utils to manage repositories
sudo yum install -y yum-utils

# Add the official HashiCorp repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# Install Terraform
sudo yum -y install terraform
```
### For running the terraform after installation

```
# Go to project folder
cd terraform-script

# Initialize Terraform
terraform init

# Validate configuration
terraform validate

# Review execution plan
terraform plan

# Apply infrastructure
terraform apply
```
### Destroy Infrastructure
```
terraform destroy
```
### Check Ping
```
ping <ip-of-newly-deployed-ec2>
```
