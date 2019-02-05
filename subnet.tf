resource "aws_subnet" "AXIS_SUBNET" {
  count             = "${length(var.sn_cidr)}"
  vpc_id            = "${aws_vpc.AXIS_VPC.id}"
  cidr_block        = "${element(var.sn_cidr,count.index)}"
  availability_zone = "${element(var.azs,count.index)}"

  tags = {
    Name = "${var.sn_tag}-${count.index + 1}"
  }
}
