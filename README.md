# Azure AI Security Perimeter Lab

Terraform lab for deploying a secured Azure AI reference environment.

The goal is to demonstrate how an AI workload can be placed behind multiple security layers: identity, access control, private networking, monitoring and governance.

## Architecture

This lab deploys:

- Resource Group
- Virtual Network
- App subnet
- Private endpoint subnet
- Linux Web App
- User Assigned Managed Identity
- Azure OpenAI account
- Azure Key Vault
- Storage Account
- Log Analytics Workspace
- Application Insights
- Private DNS zones
- Private Endpoints
- RBAC assignments

## Security Controls

### Identity

The workload uses a User Assigned Managed Identity instead of hardcoded credentials.

### Access Control

RBAC is used to grant the managed identity access only to the required services.

### Network

Azure OpenAI, Key Vault and Storage are configured with public network access disabled.

Private Endpoints and Private DNS zones expose these services privately inside the VNet.

### Monitoring

Log Analytics and Application Insights are deployed for monitoring and visibility.

## Terraform

cd terraform

terraform init
terraform fmt -recursive
terraform validate
terraform plan
terraform apply
terraform destroy

## Notes

This lab is intended for learning and reference architecture purposes.

Do not keep the environment running if it is not needed.
