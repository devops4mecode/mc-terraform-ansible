## Terraform & Ansible for Infra Provision and Config. Management

Use-Case : 
We want to provision AWS EC2 instance for website using Terraform script and setup an Apache Server(httpd) by utilising terraform "provisioner" command calling Ansible playbook script. Later using Ansible to set the simple website content lastly we deploy our website inside EC2 Instance.

Tasks:
	1. Setup Terraform script: EC2 Instance.
		a. Provider
		b. Variables
		c. AWS Security Group
		d. EC2 Resource
	2. Setup Ansible Script: Install Apache Server & Deploy website content.
		a. Setup Inventory file
		b. Install Apache Server
		c. Copy HTML file
Restart Apache Server