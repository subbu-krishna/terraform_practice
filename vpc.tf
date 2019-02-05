resource "aws_vpc" "AXIS_VPC" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = "${var.vpc_dns_hostname}"

  tags = {
    Name = "${var.vpc_tag}"
  }
}
