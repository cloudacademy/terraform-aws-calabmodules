data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-focal-20.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["099720109477"]

}

resource "aws_instance" "server" {
  count = var.num_nodes

  ami           = data.aws_ami.ubuntu.id
  instance_type = var.instance_size
  subnet_id = var.subnet_id
  vpc_security_group_ids = [var.vpc_sg]

  tags = merge(
    {
      "Name" = "${var.name}${count.index}"
    },
    var.tags,
  ) 
}