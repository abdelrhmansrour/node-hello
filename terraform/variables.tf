variable "internal_port" {
  description = "Port exposed inside the container"
  type        = number
  default     = 3000
}

variable "external_port" {
  description = "Port exposed on the host machine"
  type        = number
  default     = 3000
}

variable "new_relic_license_key" {
  description = "New Relic License Key"
  type        = string
  sensitive   = true
}
