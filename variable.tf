variable "region" {
  type    = string
  default = "ap-south-1"

}
variable "ami" {
  type    = string
  default = "ami-019715e0d74f695be"

}

variable "instance_types" {
  type    = list(string)
  default = ["t3.small", "t3.medium", "t3.micro"]

}
variable "instance_count" {
  type    = number
  default = 2

}
variable "instance_tags" {
  type = map(string)
  default = {
    Name    = "web"
    env     = "cloud"
    project = "devops"
  }

}
variable "prevent_destroy_ec2" {
  type    = bool
  default = false
}

