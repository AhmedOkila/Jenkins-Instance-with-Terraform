resource "aws_instance" "web" {
  ami           = "ami-0c7217cdde317cfec"
  instance_type = "t2.micro"
  security_groups = [ "default" ]
  user_data = templatefile("./init.sh", {})
  key_name = "AWS_EC2"

  tags = {
    Name = "Jenkins Master"
  }
}

