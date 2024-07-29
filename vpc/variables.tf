variable "environment"            { type = string       } 

#Networking Variables
variable "subnet_az"              { type = list(string) }
variable "vpc_cidr_block"         { type = string       }
variable "public_sub_cidr_block"  { type = list(string) }
variable "private_sub_cidr_block" { type = list(string) }


locals {
  vpc_name      = "${title(var.environment)}-Vpc"
  igw_name      = "${title(var.environment)}-Igw"
  nat_name      = "${title(var.environment)}-Nat"
  eip_name      = "${title(var.environment)}-Eip"
  pub_rt_name   = "${title(var.environment)}-Pub-RT"
  pri_rt_name   = "${title(var.environment)}-Pri-RT"
  pub_sub_name  = "${title(var.environment)}-PubSub-"
  pri_sub_name  = "${title(var.environment)}-PriSub-"

}