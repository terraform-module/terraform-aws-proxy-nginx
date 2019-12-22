# terraform-aws-proxy-sqlserver

Terraform AWS SQL Proxy server

[Module Resistry](https://registry.terraform.io/modules/terraform-module/proxy-sqlserver)

## Usage example

Here's the gist of using it directly from github.

```hcl
module proxy {
  source             = "terraform-module/proxy-sqlserver/aws"
  version            = "2.3.0"
  name               = format("%s-proxy", var.environment)
  instance_type      = "m3.medium"
  subnet_ids         = "subnet-2342234"
  ssh_authorized_key = "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAGEA3FSyQwBI6Z+nCSjUUk8EEAnnkhXlukKoUPND/RRClWz2s5TCzIkd3Ou5+Cyz71X0XmazM3l5WgeErvtIwQMyT1KjNoMhoJMrJnWqQPOt5Q8zWd9qG7PBl9+eiH5qV7NZ mykey@host"
  sql_server_fqdn    = "dabase.example.com"
  region             = "us-west-2"
  security_group_ids = "sg-asdfasdg"
  tags = {
    { Name = format("%s-sql-express-proxy", var.environment) }
  }
}
```

## Assumptions

## Available features

## Module Variables

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| ami | The EC2 image ID to launch. | string | `""` | no |
| cpu\_credits | The credit option for CPU usage \(unlimited or standard\) | string | `"standart"` | no |
| docker\_compose\_version | Version of docker-compose to install. | string | `"1.25.0"` | no |
| expiredate | In hours when access should expire. | string | `"100h"` | no |
| instance\_count | Number of instances to launch | number | `"1"` | no |
| instance\_type | The type of instance to start. e.g. 't2.micro' | string | n/a | yes |
| name | Name to be used on all resources as prefix | string | n/a | yes |
| nginx\_version | Version of NGINX to deploy. | string | `"1.17.6"` | no |
| region | AWS Region where to deploy resources to. | string | n/a | yes |
| security\_group\_ids | A list of security group IDs to associate with | list(string) | `"null"` | no |
| sql\_server\_fqdn | Sql server fqdn. | string | n/a | yes |
| sql\_server\_port | User name with home dictory. | number | `"1433"` | no |
| ssh\_authorized\_key | Add keys to user's authorized keys file. | string | n/a | yes |
| subnet\_ids | A list of VPC Subnet IDs to launch in. | list(string) | n/a | yes |
| tags | A mapping of tags to assign to the resource | map(string) | `{}` | no |
| user\_name | User name with home dictory. | string | `"clouduser"` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the instance |
| public\_ip | IP addresses assigned to the instance, if applicable |
| user\_account\_expiration |  |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Commands

<!-- START makefile-doc -->
```
$ make help
hooks                          Commit hooks setup
validate                       Validate with pre-commit hooks
changelog                      Update changelog
release                        Create release version
```
<!-- END makefile-doc -->


## License

Copyright 2019 ivankatliarhcuk

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## How to Contribute

Submit a pull request

# Authors

Currently maintained by [Ivan Katliarchuk](https://github.com/ivankatliarchuk) and these [awesome contributors](https://github.com/terraform-module/terraform-module-blueprint/graphs/contributors).
