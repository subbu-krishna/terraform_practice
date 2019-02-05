resource "aws_internet_gateway" "Axis_IGW" {
  vpc_id = "${aws_vpc.AXIS_VPC.id}"

  tags {
    Name = "${var.igw_tag}"
  }
}
