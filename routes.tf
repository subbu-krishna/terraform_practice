resource "aws_default_route_table" "Axis_Default_RT" {
  default_route_table_id = "${aws_vpc.AXIS_VPC.default_route_table_id}"

  route {
    cidr_block = "${var.Default_rt_igw_cidr}"
    gateway_id = "${aws_internet_gateway.Axis_IGW.id}"
  }

  tags {
    Name = "${var.Axis_Default_RT_tag}"
  }
}

#private routes

resource "aws_route_table" "Axis_pvt_rt" {
  vpc_id = "${aws_vpc.AXIS_VPC.id}"

  tags = {
    Name = "Axis_pvt_RT"
  }
}

resource "aws_route_table_association" "ra" {
  count          = "${length(var.pvt_sn_cidr)}"
  subnet_id      = "${element(aws_subnet.AXIS_PVT_SUBNET.*.id,count.index)}"
  route_table_id = "${aws_route_table.Axis_pvt_rt.id}"
}
