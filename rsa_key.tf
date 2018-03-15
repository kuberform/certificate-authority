resource "tls_private_key" "ca" {
  algorithm = "RSA"
  rsa_bits  = 2048
}
