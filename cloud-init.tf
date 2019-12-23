data template_cloudinit_config express {
  gzip          = true
  base64_encode = true

  part {
    content_type = "text/cloud-config"
    content = templatefile("${path.module}/templates/cloud-init.yaml", {
      proxy_name    = var.name
      extra_user    = var.user_name
      public_key    = var.ssh_authorized_key
      expiration    = local.user_account_expiration
      sudo          = "['ALL=(ALL) NOPASSWD:ALL']"
      nginx_version = var.nginx_version
      bootstrap_content = base64gzip(templatefile("${path.module}/templates/bootstrap.sh", {
        docker_compose_version = var.docker_compose_version
        region                 = var.region
      }))
      compose_content = base64gzip(templatefile("${path.module}/templates/compose.yml", {
        nginx_version = var.nginx_version
      }))
      nginx_content = base64gzip(templatefile("${path.module}/templates/nginx.conf", {
        sql_server_fqdn = var.sql_server_fqdn
        sql_server_port = var.sql_server_port
        timeout         = var.connection_timeout
      }))
      html_content = base64gzip(templatefile("${path.module}/templates/index.html", {
        name = var.name
      }))
    })
  }
}
