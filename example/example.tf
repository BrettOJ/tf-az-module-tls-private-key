locals {
  naming_convention_info = {
    site = "site"
    env  = "env"
    app  = "app"
    name = "name"
  }
  tags = {
    environment = "Production"
    created_by  = "Terraform"
  }
}

module "resource_groups" {
  source = "git::https://github.com/BrettOJ/tf-az-module-resource-group?ref=main"
  resource_groups = {
    1 = {
      name                   = var.resource_group_name
      location               = var.location
      naming_convention_info = local.naming_convention_info
      tags = local.tags
    }
  }
}

module "tls_private_key" {
  source = "git::https://github.com/BrettOJ/tf-az-module-tls-private-key?ref=main"
  algorithm = var.algorithm
  rsa_bits = var.rsa_bits
  ecdsa_curve = var.ecdsa_curve
  resource_group_name = var.resource_group_name
  naming_convention_info = local.naming_convention_info
  create_ssh_public_key = var.create_ssh_public_key
  location = var.location
}

