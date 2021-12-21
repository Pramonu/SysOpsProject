data "aws_ami_ids" "ubuntu" {

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["193367416928"] # Canonical
}

data "aws_cloudformation_export" "vpcid" {
  name = "ProjectStack-VpcId"
}
data "aws_cloudformation_export" "publicsubnetid" {
  name = "ProjectStack-PublicSubnetID"
}
data "aws_cloudformation_export" "privatesubnetid" {
  name = "ProjectStack-PrivateSubnetID"
}
