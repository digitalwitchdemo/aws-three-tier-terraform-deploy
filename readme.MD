# Terraform EKS & Database Deployment

This repository contains the infrastructure-as-code (IaC) setup using **Terraform** to deploy a complete AWS environment, including VPC, EKS (Kubernetes), RDS database, and DNS. The deployment is automated using **GitHub Actions**.

---
## For DNS correction for both goodday or namecheap whichever one you are using.
## ===============================================================================
### Note: at .github/workflows/cicd.yaml. comment line 67 to 80 before you deploy the infrastructure.

### step (1) first after deploying this infrastructure to aws everything will be created.
### step (2) AWS Route 53 hosted zone will be created. However, due to issue with bannd in namecheap and godaddy, that you must have 50 domains before you use their API. that is why i have updated this so you can do that part mannually. 
### step (3) Check AWS route53 hosted zone nameservers. and copy them to namecheap or godaddy and update it.

### check this video for namecheap
### check this video for godaddy.

### step (4) After updating the nameserver in the selected alterneting domain provider, you wait for 10 minutes, then 
### step (5) uncomment the .github/workflow/cicd.yaml line [67-80] and push it back to run the pipeline again by this time. the domain have been populated and certmanager and nginx will be able to make use of it. 

### If you still have issue on this, let me know by sending a screenshot of all the steps.
## Good luck on your project, I love you all.



## 📁 Project Structure

```bash
terraform-eks-db/
├── .github/workflows/          # GitHub Actions CI/CD workflows
├── .qodo/                      # Local automation/scripts (optional or internal tooling)
├── docker-git-runner-setup/   # Docker setup for custom GitHub runner (if used)
├── module-database/           # Terraform module to deploy RDS databases
├── module-dns/                # Terraform module for Route53 or other DNS setup
├── module-eks/                # Terraform module to deploy an EKS cluster
├── module-vpc/                # Terraform module to provision VPC and networking
├── .terraform.lock.hcl        # Provider and dependency lock file
├── .tflint.hcl                # Linting configuration for Terraform
├── 01-provider.tf             # AWS provider configuration
├── backend.tf                 # Remote state configuration (e.g., Terraform Cloud/S3)
├── deploy.yaml                # Sample GitHub Actions workflow (deprecated or backup)
├── main.tf                    # Main Terraform entry point that wires all modules
├── output.tf                  # Outputs of the infrastructure
├── readme.MD                  # You are here
├── terraform.tfvars           # Variable values
└── variable.tf                # Variable definitions.
```

## This is the architecture for the infrastruture deployment
![Project Architecture](architecture.png)