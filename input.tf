variable "organization" {
  type        = "string"
  description = "The official name of your company for SSL certificates."
}

variable "street_address" {
  type        = "list"
  description = "The street address for your company."
}

variable "locality" {
  type        = "string"
  description = "The name of the city for your company."
}

variable "province" {
  type        = "string"
  description = "The name of the state for your company."
}

variable "country" {
  type        = "string"
  description = "The two digit country code for your company."
}

variable "postal_code" {
  type        = "string"
  description = "The postal code for your company."
}
