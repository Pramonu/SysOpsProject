#region
variable "region" {
  type    = string
  default = "us-west-2"
}
#ami id
variable "ami_id" {
  type = map
  default = {
        "us-west-2"  = "ami-074251216af698218" }
}
#instance type
variable "instance_type" {
  type    = string
  default = "t2.micro"
}
#existing key-pair name
variable "key_name" {
  type    = string
  default = "labkp1"
}
# public subnet id
variable "publicsubnetid" {
  type    = string
  default = "subnet-04ab40918eeac5698"
}
#private subnet id
variable "privatesubnetid" {
  type    = string
  default = "subnet-04f06cc0a9ce165fa"
}
#vpc id
variable "vpcid" {
  type    = string
  default = "vpc-0699cfa33ccb46051"
}

variable "http_port" {
  description = "The port to use for HTTP traffic. Defaults to 80"
  default = "80"
}

variable "ssh_port" {
  description = "The port to use for HTTP traffic. Defaults to 22"
  default = "22"
}

variable "https_port" {
  description = "The port to use for HTTPS traffic. Defaults to 443"
  default = "443"
}


variable "instance_tenancy" {
  description = "A tenancy option for instances launched into the VPC"
  type        = string
  default     = "default"
}

variable "enable_dns_hostnames" {
  description = "Should be true to enable DNS hostnames in the VPC"
  type        = bool
  default     = true
}

variable "enable_dns_support" {
  description = "Should be true to enable DNS support in the VPC"
  type        = bool
  default     = true
}

variable "enable_classiclink" {
  description = "Should be true to enable ClassicLink for the VPC. Only valid in regions and accounts that support EC2 Classic."
  type        = bool
  default     = false
}

variable "tags" {
  description = "A map of tags to add to all resources"
  type        = string
  default     = "Vpc-custom-demo"
}