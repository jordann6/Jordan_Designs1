# Jordan_Designs1
# Cloud Infrastructure Automation Project

This project automates the setup and deployment of a cloud-based infrastructure using **Terraform**, **AWS**, and **Python**. It provisions resources such as VPCs, EC2 instances, RDS databases, S3 buckets, and Lambda functions, and generates a visual architecture diagram for documentation.

## Features
- **Infrastructure as Code (IaC)**: Uses Terraform to provision and manage cloud resources.
- **Automated Deployment**: Scripts for configuring EC2 instances, connecting to RDS, and setting up S3 buckets.
- **Serverless Functions**: Includes a Python-based Lambda function for event-driven tasks.
- **Visual Documentation**: Generates a visual architecture diagram using the `diagrams` library.
- **Version Control**: All configurations and scripts are stored in a GitHub repository for easy collaboration and tracking.

## Project Components
1. **Terraform Configuration**:
   - Provisions a VPC, subnets, security groups, and other AWS resources.
   - Sets up EC2 instances and connects them to an RDS database.

2. **EC2 Configuration**:
   - Installs necessary dependencies on EC2 instances.
   - Configures connections to the RDS database.

3. **S3 Storage**:
   - Configures an S3 bucket for static file hosting and backups.

4. **Lambda Function**:
   - A Python-based Lambda function with proper IAM permissions for event-driven tasks.

5. **Architecture Diagram**:
   - A Python script that generates a visual diagram of the infrastructure using the `diagrams` library.

6. **GitHub Repository**:
   - Stores all project files, configurations, and scripts for version control.

## Prerequisites
- **AWS Account**: An active AWS account with necessary permissions.
- **Terraform**: Installed and configured on your local machine.
- **Python 3.6 or higher**: Required for running the diagram generation script.
- **Git**: For version control and collaboration.

## Installation
1. Clone this repository:
   ```bash
   git clone https://github.com/jordann6/your-repo.git
