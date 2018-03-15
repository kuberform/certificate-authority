resource "tls_self_signed_cert" "ca" {
  key_algorithm   = "${tls_private_key.ca.algorithm}"
  private_key_pem = "${tls_private_key.ca.private_key_pem}"

  validity_period_hours = 87600
  early_renewal_hours   = 8760

  is_ca_certificate = true

  allowed_uses = [
    "cert_signing",
    "crl_signing",
  ]

  subject {
    common_name         = "Kubernetes Root Certificate Authority"
    organization        = "${var.organization}"
    organizational_unit = "Infrastructure Operations"
    street_address      = ["${var.street_address}"]
    locality            = "${var.locality}"
    province            = "${var.province}"
    country             = "${upper(var.country)}"
    postal_code         = "${var.postal_code}"
  }
}
