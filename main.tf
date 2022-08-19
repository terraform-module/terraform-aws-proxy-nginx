resource "aws_instance" "server" {
  ami                         = coalesce(var.ami, local.ami)
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_ids[0]
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  user_data_base64            = data.cloudinit_config.express.rendered

  credit_specification {
    cpu_credits = var.cpu_credits
  }

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
    encrypted             = true
  }

  lifecycle {
    ignore_changes = [
      user_data_base64
    ]
  }

  tags        = merge({ Name = var.name }, var.tags)
  volume_tags = merge({ Name = var.name }, var.tags)
}
