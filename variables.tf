variable "algorithm" {
  description = "The algorithm to use for the key. RSA or ECDSA."
  type        = string
  default     = "RSA"
}

variable "rsa_bits" {
  description = "The number of bits to use for the RSA key."
  type        = number
  default     = 2048
}

variable "ecdsa_curve" {
  description = "The name of the elliptic curve to use for the ECDSA key."
  type        = string
  default     = "P384"
}

variable "location" {
  description = "The Azure Region where the SSH Public Key should exist."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the Resource Group where the SSH Public Key should exist."
  type        = string
}

variable "naming_convention_info" {
  description = "The naming convention information."
  type = object({
    name = string
    site = string
    env  = string
    app  = string
  })
}

variable "create_ssh_public_key" {
  description = "Create SSH Public Key."
  type        = bool
  default     = true
}

variable "tags" {
  description = "A mapping of tags to assign to the resource."
  type        = map(string)
  default     = {}
}

