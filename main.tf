module this {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 2.12.0"

  ami                         = coalesce(var.ami, local.ami)
  instance_count              = var.instance_count
  name                        = var.name
  instance_type               = var.instance_type
  subnet_ids                  = var.subnet_ids
  vpc_security_group_ids      = var.security_group_ids
  associate_public_ip_address = true
  user_data_base64            = data.template_cloudinit_config.express.rendered
  cpu_credits                 = var.cpu_credits

  root_block_device = [
    {
      volume_type           = "gp2"
      volume_size           = 10
      delete_on_termination = true
      encrypted             = true
    },
  ]
  
  lifecycle {
    ignore_changes = [
      user_data_base64
    ]
  }

  tags = var.tags
}
