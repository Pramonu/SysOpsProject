# SysOpsProject
SysOps Project
Part-1 Automation
* Step 1 : Cloud Formation
-----------------------------
• Create a VPC using CloudFormation - with one 
public subnet, one private subnet.
• Create IGW
• Create Routing Tables
* Step 2 : Terraform
-----------------------------
• In public subnet - Auto Scaling group with min cap as 
2 and max as 5, AMI- ubuntu 18.04
• Frontend with a layer 4 Load balancer
• In private subnet - One EC2 with Ubuntu
* Step 3 : Ansible
-----------------------------
• On the ASG and EC2 install Apache and on the 
Apache copy index.html
• On private subnet EC2 install MySql
Part-2  Secure Communication and Security Management for Application 
(Manual Configuration)
Requirement:
• Route53 Configuration for VPC internal 
communication
• MySQL DB (EC2) should be accessible only from ASG 
(Webserver Cluster) 
Hint: Security Groups
• A user to manage application infrastructure (VPC, 
Route53, EC2) 
Hint : IAM Policies
• S3 Bucket to store log files
• All EC2 instances should have permission to access S3 
Hints: IAM Roles
Part-3  Monitoring App and App Infrastructure (Manual Configuration)
• Required to create a CloudWatch 
Dashboard to monitor :
o Network Traffic (Network I/O)
o EC2 instances- CPU, Disk, Memory 
Usage
o Load balancer Traffic
