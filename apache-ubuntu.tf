v 0.9.2
resource "aws_instance" "ubuntu" {
  ami = "ami-051dfed8f67f095f5"  
  availability_zone = "us-east-2a"
  instance_type = "t2.micro"
  key_name = "terraform_keypair" 
  tags = {Name = "ubuntuServer"}
  user_data = <<-EOF
#! /bin/bash
sudo apt update -y
sudo apt install apache2 -y
sudo systemctl start apache2
EOF
}
