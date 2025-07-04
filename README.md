# 🚀 Terraform AWS EC2 Instance Deployment

This project demonstrates how to use **Terraform** to provision an **EC2 instance** on AWS, along with an **SSH key pair** and a **security group** to allow SSH access.

---

## 📁 Project Structure
terraform-aws-ec2/
├── main.tf # Main infrastructure configuration
├── variables.tf # Input variables
├── outputs.tf # Output values
├── terraform.tfvars # Variable values (excluded from repo)
└── README.md # Project documentation


## 🌐 What It Does

- Creates an EC2 instance in the AWS `us-east-1` region
- Uploads a provided SSH public key to create a key pair
- Opens **port 22 (SSH)** access to the instance
- Uses a `remote-exec` provisioner to SSH and print a message on creation

---

## ⚙️ Prerequisites

- AWS Account
- AWS CLI configured with IAM credentials  
  (`aws configure`)
- Terraform installed ([Install guide](https://learn.hashicorp.com/tutorials/terraform/install-cli))

---
Generate SSH Key

bash
Copy
Edit
ssh-keygen -t rsa -f ~/.ssh/aws-key -C "your_email@example.com"
Update terraform.tfvars

hcl
Copy
Edit
public_key_path  = "~/.ssh/aws-key.pub"
private_key_path = "~/.ssh/aws-key"
Initialize Terraform

bash
Copy
Edit
terraform init
Apply the configuration

bash
Copy
Edit
terraform apply
Enter yes when prompted.

🔎 Outputs
After apply, Terraform will output the public IP of the instance:

makefile
Copy
Edit
Outputs:
instance_ip = "54.227.34.102"
You can then SSH into your instance:

bash
Copy
Edit
ssh -i ~/.ssh/aws-key ubuntu@54.227.34.102
🧹 Clean Up
To destroy the resources and avoid AWS charges:

bash
Copy
Edit
terraform destroy
📌 Notes
Uses the ami-0c7217cdde317cfec (Ubuntu 20.04 in us-east-1)

Remote provisioning is done using the remote-exec provisioner to print a welcome message
This is the project link: https://roadmap.sh/projects/iac-digitalocean

Replace provisioning logic in main.tf to install packages or configure apps

This project is open-source and free to use under the MIT License.

