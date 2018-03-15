output "private_key" {
  sensitive = true
  value     = "${tls_private_key.ca.private_key_pem}"
}

output "certificate_data" {
  value = {
    key_algo    = "${tls_private_key.ca.algorithm}"
    public_key  = "${tls_private_key.ca.public_key_pem}"
    certificate = "${tls_self_signed_cert.ca.cert_pem}"

    subject = {
      "organization"   = "${var.organization}"
      "street_address" = ["${var.street_address}"]
      "locality"       = "${var.locality}"
      "province"       = "${var.province}"
      "country"        = "${upper(var.country)}"
      "postal_code"    = "${var.postal_code}"
    }
  }
}
