output "tls_private_key_output" {
  value = tls_private_key.prvt_key 
}

output "azurerm_ssh_public_key_output" {
  value = azurerm_ssh_public_key.ssh_pk
}