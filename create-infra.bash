# Load environment variables
export $(grep -v '^#' .env | xargs)

# Destroy Terraform
terraform destroy --auto-approve

# Initialize Terraform
terraform init

# Plan the deployment
terraform plan 

# Apply the configuration
terraform apply --auto-approve