provider "aws" {
  region = var.region
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




}