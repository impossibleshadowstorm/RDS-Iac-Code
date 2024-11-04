
# RDS-Iac-Code

This project uses Terraform to create and manage an AWS RDS instance. It includes scripts for creating and destroying the infrastructure, with an emphasis on maintaining a clean state using S3 as the remote backend.

## Project Structure

```
RDS-Iac-Code/
├── modules/
│   ├── rds/
│   │   ├── main.tf
│   │   ├── outputs.tf
│   │   └── variables.tf
│   └── vpc/
│       ├── main.tf
│       ├── outputs.tf
├── .env
├── .gitignore
├── create-infra.bash
├── destroy-infra.bash
├── main.tf
├── outputs.tf
└── variables.tf
```

## Prerequisites

1. **Install Terraform**: Ensure that [Terraform](https://www.terraform.io/downloads) is installed on your system.
2. **AWS Account**: An active AWS account is required.
3. **Remote S3 State**: The project uses S3 as a remote state storage. You must create an S3 bucket named `personal-resource-bucket` (or update the bucket name in the configuration) before running the scripts.

## Environment Setup

1. **Set up AWS credentials**: Create an IAM user in AWS with appropriate permissions for RDS, VPC, and S3. Generate and note the Access Key ID and Secret Access Key.
2. **Create `.env` file**: Add a `.env` file in the root directory to store your AWS secrets. Refer to `env.sample` for the required keys.

## Usage

### Step 1: Make Scripts Executable

Run the following commands to make the scripts executable:

```bash
chmod +x create-infra.bash
chmod +x destroy-infra.bash
```

### Step 2: Initialize and Run Terraform

To create the infrastructure, use the following commands:

```bash
./create-infra.bash
```

To destroy the infrastructure, use:

```bash
./destroy-infra.bash
```

## Notes

- **Terraform State**: The project uses an S3 bucket as the backend for Terraform state management. Ensure the S3 bucket is correctly configured and accessible.
- **Environment Variables**: The `.env` file should securely store your AWS credentials. This file is not versioned and should be kept safe.

## Project Modules

- **modules/rds**: Manages the RDS instance creation.
- **modules/vpc**: Manages the VPC configuration.