#Provider.tf variables
variable "region" {
  default = "us-east-1"
}

#vpc.tf variables
variable "vpc_cidr" {
  default = "192.152.0.0/16"
}

variable "vpc_tag" {
  default = "Axis_VPC"
}

variable "vpc_dns_hostname" {
  default = "true"
}

#subnet.tf variables
variable "sn_cidr" {
  type    = "list"
  default = ["192.152.0.0/25", "192.152.1.0/25", "192.152.2.0/25"]
}

variable "azs" {
  type    = "list"
  default = ["us-east-1a", "us-east-1b", "us-east-1c"]
}

variable "sn_tag" {
  default = "Axis_Pub_Subnet"
}

#igw.tf variables
variable "igw_tag" {
  default = "Axis_igw"
}

#routes.tf variables
variable "Default_rt_igw_cidr" {
  default = "0.0.0.0/0"
}

variable "Axis_Default_RT_tag" {
  default = "Axis_Default"
}

#publicServer.tf variables

variable "ami" {
  default = "ami-0ff8a91507f77f867"
}

variable "keyName" {
  default = "nvirgina"
}

#privateSubnet.tf variables
variable "pvt_sn_cidr" {
  type    = "list"
  default = ["192.152.3.0/25", "192.152.4.0/25"]
}

variable "pvt_sn_tag" {
  default = "Axis_Pvt_Subnet"
}
