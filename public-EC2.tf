resource "aws_instance" "webserver" {
  count                       = 1
  ami                         = "${var.ami}"
  instance_type               = "t2.micro"
  subnet_id                   = "${element(aws_subnet.AXIS_SUBNET.*.id,count.index)}"
  key_name                    = "${var.keyName}"
  vpc_security_group_ids      = ["${aws_default_security_group.default.id}"]
  associate_public_ip_address = true

  tags {
    Name = "WebServer1"
  }
}
