provider "aws" {
  region = "us-east-1"
}

# Instância 1: Servidor Apache
resource "aws_instance" "apache_server" {
  ami           = "ami-0c55b159cbfafe1f0"  # Amazon Linux 2
  instance_type = "t3.micro"

  root_block_device {
    volume_size = 8
  }

  tags = {
    Name = "ApacheServer"
  }

  user_data = <<-EOF
    #!/bin/bash
    echo "Apache Server is ready!" > /tmp/server_ready
  EOF
}

# Instância 2: Servidor Nginx
resource "aws_instance" "nginx_server" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t3.micro"

  root_block_device {
    volume_size = 8
  }

  tags = {
    Name = "NginxServer"
  }

  user_data = <<-EOF
    #!/bin/bash
    echo "Nginx Server is ready!" > /tmp/server_ready
  EOF
}

