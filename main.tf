resource "aws_instance" "nginx_server" {
  ami           = "ami-0ecb62995f68bb549"
  instance_type = "t3.micro"
  key_name = aws_key_pair.terraform_key.key_name

  vpc_security_group_ids = [
    aws_security_group.nginx_sg.id
  ]

  user_data = <<-EOF
              #!/bin/bash
              sudo apt update
              sudo apt install -y nginx
              sudo systemctl start nginx
              EOF

  tags = {
    Name = "Terraform-Nginx-Server"
  }
}
