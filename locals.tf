locals {
  ami                     = data.aws_ami.ubuntu.id
  user_account_expiration = formatdate("YYYY-MM-DD", timeadd(timestamp(), var.expiredate))

  ami_filters = {
    name                = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
    virtualization-type = ["hvm"]
  }
}
