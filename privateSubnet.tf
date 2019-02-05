resource "aws_subnet" "AXIS_PVT_SUBNET" {
  count             = "${length(var.pvt_sn_cidr)}"
  vpc_id            = "${aws_vpc.AXIS_VPC.id}"
  cidr_block        = "${element(var.pvt_sn_cidr,count.index)}"
  availability_zone = "${element(var.azs,count.index)}"

  tags = {
    Name = "${var.pvt_sn_tag}-${count.index + 1}"
  }
}
