provider "aws" {
  region = var.region
}
resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main-vpc-${terraform.workspace}"
  }
}
resource "aws_instance" "web" {
  count         = var.instance_count
  ami           = var.ami
  instance_type = terraform.workspace == "prod" ? "t3.medium" : "t2.micro"
  tags = merge(
    var.instance_tags,
    {
      Environment = terraform.workspace
      Name        = "web-${terraform.workspace}"
    }
  )
   

  depends_on = [aws_vpc.main]

  lifecycle {
    prevent_destroy       = true
    create_before_destroy = true
    ignore_changes        = [tags]

  }
}

output "web_instance_ids" {
  value = aws_instance.web[*].id
  description = "The IDs of the EC2 web instances"
}

output "web_instance_public_ips" {
  value = aws_instance.web[*].public_ip
  description = "The public IPs of the EC2 web instances"
}





