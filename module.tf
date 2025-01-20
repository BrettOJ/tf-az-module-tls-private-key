resource "tls_private_key" "prvt_key" {
  algorithm   = var.algorithm
  rsa_bits    = var.rsa_bits
  ecdsa_curve = var.ecdsa_curve
}

