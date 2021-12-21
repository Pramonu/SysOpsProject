
resource "aws_launch_configuration" "web" {
  name_prefix = "web-"

  image_id = "ami-074251216af698218" # Ubuntu 18.04, SSD Volume Type
  instance_type = "t2.micro"
  key_name = "labkp1"

  security_groups = [
    "${aws_security_group.demosg1.id}"
  ]
  associate_public_ip_address = true

  user_data = <<-EOF
    #!/bin/sh
    sudo apt-get update
    sudo apt-get install unzip tree
    sudo apt-get install -y python-pip
    pip install boto
    EOF


  lifecycle {
    create_before_destroy = true
  }
}