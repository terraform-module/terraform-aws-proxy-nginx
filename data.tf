data aws_ami ubuntu {
  most_recent = true

  dynamic "filter" {
    for_each = local.ami_filters

    content {
      name   = filter.key
      values = filter.value
    }
  }

  owners = ["099720109477"] # Canonical
}
