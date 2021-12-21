resource "aws_instance" "PrivateLinux" {
  ami           = "ami-074251216af698218"
  instance_type = "t2.micro"
  key_name      = "labkp1"

  subnet_id                   = data.aws_cloudformation_export.privatesubnetid.value
  vpc_security_group_ids      = [aws_security_group.demosg1.id]
  associate_public_ip_address = false

  user_data = <<-EOF
  #!/bin/sh
    sudo apt-get update
    sudo apt-get install unzip tree
    sudo apt-get install -y python-pip
    pip install boto
  EOF

  tags = {
    "Name" : "PrivateLinux"
  }
}