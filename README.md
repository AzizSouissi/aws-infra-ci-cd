# AWS Infrastructure CI/CD Automation

This repository contains all the necessary files and configurations to automate the provisioning, configuration, and deployment of a web application on AWS using **Terraform**, **Ansible**, **Docker**, and **GitHub Actions**.

## **Overview**

This project automates the deployment of a containerized web application in the following steps:
1. **Provision Infrastructure**: Use **Terraform** to provision an AWS EC2 instance, VPC, subnet, and security groups.
2. **Configure the Instance**: Use **Ansible** to install Docker on the EC2 instance, pull the application image from GitHub Packages, and run the application as a container.
3. **CI/CD Pipeline**: Use **GitHub Actions** to build the Docker image, push it to GitHub Packages, and trigger the deployment process.

---

## **Architecture**

The architecture for this project includes the following components:
- **Local Development Environment**: Tools like Git, Terraform, Ansible, and Docker are used for development and testing.
- **AWS Infrastructure**: Resources like VPC, Subnet, Security Group, and EC2 instance are provisioned via Terraform.
- **Containerization**: Docker is used to package the web application.
- **CI/CD Automation**: GitHub Actions automate Docker image builds and deployment workflows.

![Architecture Diagram](path/to/your/diagram.png)

---

## **Getting Started**

### **Prerequisites**
Make sure you have the following installed:
- **Terraform** (`https://www.terraform.io/`)
- **Ansible** (`https://www.ansible.com/`)
- **Docker** (`https://www.docker.com/`)
- **Git** (`https://git-scm.com/`)

You’ll also need:
- An AWS account with programmatic access (Access Key ID and Secret Access Key).
- A GitHub account to store the repository and configure workflows.

---

## **Setup Instructions**

### **Step 1: Clone the Repository**
```bash
git clone https://github.com/<YOUR_USERNAME>/<REPOSITORY_NAME>.git
cd <REPOSITORY_NAME>
```

---

### **How to Adapt This for Your Needs**
1. Replace placeholders like `<YOUR_USERNAME>`, `<APP_NAME>`, and `<EC2_PUBLIC_IP>` with actual values.
2. Update the folder structure if your project requires additional configurations.
3. Add more details about your specific application in the **Dockerfile** and **app/** directory.

Let me know if you need further assistance!
