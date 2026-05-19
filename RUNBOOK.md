### security mandates to maintain :

- attaching iam role to ec2
- configure aws credentials via aws configure

## iam role
 - ec2
 - role name "Terraform-EC2-Execution-Role"
 - permission : ec2fullaccess , vpcfullaccess

### for running in cli
# Install yum-utils to manage repositories
sudo yum install -y yum-utils

# Add the official HashiCorp repository
sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo

# Install Terraform
sudo yum -y install terraform

# go to folder
cd terraform-script

# terraform init starting
terraform init
terraform validate
terraform plan
terraform apply

# to delete entire architecture perform :
terraform destroy

## for getting inside the new instance created , check with ssh and ping
ping 13.203.25.151
chmod 400 terraform-new.pem
ssh -i terraform-new.pem ec2-user@13.203.25.151
