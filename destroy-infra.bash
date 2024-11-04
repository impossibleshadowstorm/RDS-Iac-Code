# Load environment variables
export $(grep -v '^#' .env | xargs)

# Destroy Terraform
terraform destroy --auto-approve