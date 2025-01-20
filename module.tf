resource "tls_private_key" "prvt_key" {
  algorithm   = var.algorithm
  rsa_bits    = var.rsa_bits
  ecdsa_curve = var.ecdsa_curve
}

resource "azurerm_ssh_public_key" "ssh_pk" {
  for_each            = var.create_ssh_public_key ? { for key, value in tls_private_key.prvt_key : key => value.public_key_openssh } : {}
  name                = module.sshpk_name.naming_convention_output[var.naming_convention_info.name].names.0
  resource_group_name = var.resource_group_name
  location            = var.location
  public_key          = each.value["public_key_openssh"]
  depends_on          = [tls_private_key.prvt_key]
}

