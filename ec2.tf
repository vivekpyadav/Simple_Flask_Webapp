# EC2 Instance
resource "aws_instance" "flask_app" {
  ami           = "ami-05edb7c94b324f73c" # Amazon Linux
  instance_type = "t3.micro"
  security_groups = [aws_security_group.flask_sg.name]

  user_data = <<-EOF
              #!/bin/bash
              sudo yum update -y
              sudo yum install -y docker
              sudo systemctl start docker
              sudo systemctl enable docker
              sudo docker pull kalkilinux/flaskapp:1 # Change the image if you want
              sudo docker run -d -p 80:5000 kalkilinux/flaskapp:1
              EOF

  tags = {
    Name = "FlaskAppServer"
  }
}
