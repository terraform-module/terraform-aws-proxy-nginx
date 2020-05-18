# terraform-aws-proxy-nginx

Terraform AWS SQL nginx Proxy server

[![](https://img.shields.io/github/license/terraform-module/terraform-aws-proxy-nginx)](https://github.com/terraform-module/terraform-aws-proxy-nginx)
![](https://img.shields.io/github/v/tag/terraform-module/terraform-aws-proxy-nginx)
[![](https://img.shields.io/github/workflow/status/terraform-module/terraform-aws-proxy-nginx/validator/master)](https://github.com/terraform-module/terraform-aws-proxy-nginx/actions?query=is%3Acompleted)
![](https://github.com/terraform-module/terraform-aws-proxy-nginx/workflows/Validator/badge.svg)
![](https://github.com/terraform-module/terraform-aws-proxy-nginx/workflows/Labeler/badge.svg)
![](https://img.shields.io/issues/github/terraform-module/terraform-aws-proxy-nginx)
![](https://img.shields.io/github/issues/terraform-module/terraform-aws-proxy-nginx)
![](https://img.shields.io/github/issues-closed/terraform-module/terraform-aws-proxy-nginx)
[![](https://img.shields.io/github/languages/code-size/terraform-module/terraform-aws-proxy-nginx)](https://github.com/terraform-module/terraform-aws-proxy-nginx)
[![](https://img.shields.io/github/repo-size/terraform-module/terraform-aws-proxy-nginx)](https://github.com/terraform-module/terraform-aws-proxy-nginx)
![](https://img.shields.io/github/languages/top/terraform-module/terraform-aws-proxy-nginx?color=green&logo=terraform&logoColor=blue)
![](https://img.shields.io/github/commit-activity/m/terraform-module/terraform-aws-proxy-nginx)
![](https://img.shields.io/github/contributors/terraform-module/terraform-aws-proxy-nginx)
![](https://img.shields.io/github/last-commit/terraform-module/terraform-aws-proxy-nginx)
[![Maintenance](https://img.shields.io/badge/Maintenu%3F-oui-green.svg)](https://GitHub.com/terraform-module/terraform-aws-proxy-nginx/graphs/commit-activity)


## Usage example

Here's the gist of using it directly from github.

```hcl
module proxy {
  source             = "terraform-module/proxy-nginx/aws"
  version            = "2.3.0"

  name               = format("%s-proxy", var.environment)
  instance_type      = "m3.medium"
  subnet_ids         = "subnet-2342234"
  ssh_authorized_key = "ssh-rsa AAAA mykey@host"
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
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |
| template | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| ami | The EC2 image ID to launch. | `string` | `""` | no |
| connection\_timeout | Database connection timeout. | `number` | `10` | no |
| cpu\_credits | The credit option for CPU usage (unlimited or standard) | `string` | `"standart"` | no |
| docker\_compose\_version | Version of docker-compose to install. | `string` | `"1.25.0"` | no |
| expiredate | In hours when access should expire. | `string` | `"100h"` | no |
| instance\_count | Number of instances to launch | `number` | `1` | no |
| instance\_type | The type of instance to start. e.g. 't2.micro' | `string` | n/a | yes |
| name | Name to be used on all resources as prefix | `string` | n/a | yes |
| nginx\_version | Version of NGINX to deploy. | `string` | `"1.17.6"` | no |
| region | AWS Region where to deploy resources to. | `string` | n/a | yes |
| security\_group\_ids | A list of security group IDs to associate with | `list(string)` | `null` | no |
| sql\_server\_fqdn | Sql server fqdn. | `string` | n/a | yes |
| sql\_server\_port | User name with home dictory. | `number` | `1433` | no |
| ssh\_authorized\_key | Add keys to user's authorized keys file. | `string` | n/a | yes |
| subnet\_ids | A list of VPC Subnet IDs to launch in. | `list(string)` | n/a | yes |
| tags | A mapping of tags to assign to the resource | `map(string)` | `{}` | no |
| user\_name | User name with home dictory. | `string` | `"clouduser"` | no |

## Outputs

| Name | Description |
|------|-------------|
| id | The ID of the instance |
| public\_ip | IP addresses assigned to the instance, if applicable |
| user\_account\_expiration | n/a |

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


### :memo: Guidelines

 - :memo: Use a succinct title and description.
 - :bug: Bugs & feature requests can be be opened
 - :signal_strength: Support questions are better asked on [Stack Overflow](https://stackoverflow.com/)
 - :blush: Be nice, civil and polite ([as always](http://contributor-covenant.org/version/1/4/)).

## License

Copyright 2019 Ivan Katliarhcuk

MIT Licensed. See [LICENSE](./LICENSE) for full details.

## How to Contribute

Submit a pull request

# Authors

Currently maintained by [Ivan Katliarchuk](https://github.com/ivankatliarchuk) and these [awesome contributors](https://github.com/terraform-module/terraform-aws-proxy-nginx/graphs/contributors).

[![ForTheBadge uses-git](http://ForTheBadge.com/images/badges/uses-git.svg)](https://GitHub.com/)

## Terraform Registry

- [Module](https://registry.terraform.io/modules/terraform-module/proxy-nginx/aws)