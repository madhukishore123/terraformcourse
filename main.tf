data "aws_availability_zones" "available" {}

resource "aws_instance" "webserver" {
  count             = 6
  ami               = "${lookup(var.ami_id,var.region)}"
  instance_type     = "${lookup(var.instance_type,var.env)}"
  security_groups   = "${var.sgs}"
  availability_zone = "${data.aws_availability_zones.available.names[count.index]}"

  tags {
    Name = "server-${count.index+1}"
  }
}
