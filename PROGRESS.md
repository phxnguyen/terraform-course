# Tiến độ học Terraform

> Tổng: **2/61 exercises** · **0/6 projects**

## Exercises

### Phần 1 — Vì sao dùng IaC (01–02)

| Done | # | Exercise |
|:---:|:---:|---|
| [x] | 01 | Creating VPCs and Subnets Manually in AWS |
| [x] | 02 | Creating VPCs and Subnets with Terraform and IaC |

### Phần 2 — Terraform, HCL & CLI (03–06)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 03 | Understanding the Different Terraform Stages |
| [ ] | 04 | Overview of the Hashicorp Configuration Language (HCL) |
| [ ] | 05 | Our First Terraform Project |
| [ ] | 06 | Working with the Terraform CLI |

### Phần 3 — Backends (07–08)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 07 | Using a Remote S3 Backend |
| [ ] | 08 | Partial Backend Configuration |

### Phần 4 — Providers & Data Sources (09–13)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 09 | Working with Providers |
| [ ] | 10 | Using Data Sources to Fetch AMI Information |
| [ ] | 11 | Using Data Sources to Fetch AWS Caller Identity and Region |
| [ ] | 12 | Using Data Sources to Fetch VPC Information |
| [ ] | 13 | Using Data Sources to Create AWS IAM Policies |

### Phần 5 — Biến, locals, outputs (14–21)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 14 | Receiving the AWS Region via Variables |
| [ ] | 15 | Customizing EC2 Instance Size and Volume Data |
| [ ] | 16 | Using Objects for Volume Configuration |
| [ ] | 17 | Working with `tfvars` |
| [ ] | 18 | Working with `auto.tfvars` |
| [ ] | 19 | Working with Locals |
| [ ] | 20 | Working with Outputs |
| [ ] | 21 | Working with Sensitive Values |

### Phần 6 — Expressions & Functions (22–26)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 22 | Operators in Terraform |
| [ ] | 23 | `for` Expression with Lists |
| [ ] | 24 | `for` Expression with Maps |
| [ ] | 25 | Transforming Lists into Maps and Vice Versa |
| [ ] | 26 | Working with Functions |

### Phần 7 — Nhiều resource: count / for_each (27–34)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 27 | Creating Multiple Subnets with the `count` Argument |
| [ ] | 28 | Referencing Resources with `count` Arguments |
| [ ] | 29 | Creating EC2 Instances based on a List Variable |
| [ ] | 30 | Extending the AMIs to also Allow NGINX |
| [ ] | 31 | Adding Validation to the List Variable |
| [ ] | 32 | Creating EC2 Instances Based on a Map Variable |
| [ ] | 33 | Adding Validation to the Map Variable |
| [ ] | 34 | Passing Subnet Information in the Configuration |

### Phần 8 — Modules (35–43)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 35 | Using the AWS VPC Module |
| [ ] | 36 | Using the AWS EC2 Module |
| [ ] | 37 | Creating Our First VPC Module |
| [ ] | 38 | Migrating to Using Object Variables |
| [ ] | 39 | Extending the VPC Module to Receive Subnet Configuration |
| [ ] | 40 | Validating the Availability Zones |
| [ ] | 41 | Extending the Module to Create Public and Private Subnets |
| [ ] | 42 | Defining Our Module's Outputs |
| [ ] | 43 | Testing Our Module with EC2 Instances |

### Phần 9 — Pre/Post/Check conditions & State (44–50)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 44 | Precondition Blocks |
| [ ] | 45 | Postcondition Blocks |
| [ ] | 46 | Check Blocks |
| [ ] | 47 | Refactoring Configuration with the CLI and Moved Blocks |
| [ ] | 48 | Importing Existing Infrastructure Into Terraform |
| [ ] | 49 | Removing Infrastructure from Terraform |
| [ ] | 50 | Replacing Resources with Taints |

### Phần 10 — Workspaces (51–53)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 51 | Creating Workspaces in the Terraform CLI |
| [ ] | 52 | Working with Multiple Workspaces |
| [ ] | 53 | Using `.tfvars` Files to Store Workspace Configuration |

### Phần 11 — Terraform Cloud (54–61)

| Done | # | Exercise |
|:---:|:---:|---|
| [ ] | 54 | Creating a Workspace in Terraform Cloud |
| [ ] | 55 | Creating Our First Resource with Terraform Cloud |
| [ ] | 56 | Authenticating into AWS with Environment Variables |
| [ ] | 57 | Understanding Workspace Variables |
| [ ] | 58 | Creating a VPC and Subnet via VCS Integration |
| [ ] | 59 | Generating Speculative Plans for Pull Requests |
| [ ] | 60 | Publishing Our Networking Module in a Private Registry |
| [ ] | 61 | Cleaning Up Resources in Terraform Cloud |

## Projects

| Done | # | Project |
|:---:|:---:|---|
| [ ] | P00 | VPC + EC2 (solution trong `06-resources/`) |
| [ ] | P01 | S3 Static Website |
| [ ] | P02 | IAM Users |
| [ ] | P03 | Import Lambda |
| [ ] | P04 | RDS Module |
| [ ] | P05 | Terraform Cloud OIDC |
