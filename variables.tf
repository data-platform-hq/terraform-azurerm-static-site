variable "project" {
  type        = string
  description = "Project name"
}

variable "env" {
  type        = string
  description = "Environment"
}

variable "location" {
  type        = string
  description = "Location"
}

variable "tags" {
  type        = map(string)
  description = "Tags"
}

variable "resource_group" {
  type        = string
  description = "Resource group name"
}

variable "name" {
  type        = string
  description = "Static site name"
}

variable "identity_ids" {
  type        = list(string)
  description = "List of user assigned identity IDs"
  default     = null
}

variable "sku_tier" {
  type        = string
  description = "SKU tier"
  default     = "Free"
  validation {
    condition     = contains(["Free", "Standard"], var.sku_tier)
    error_message = "SKU tier must be either Free or Standard"
  }
}

variable "sku_size" {
  type        = string
  description = "SKU size"
  default     = "Free"
  validation {
    condition     = contains(["Free", "Standard"], var.sku_size)
    error_message = "SKU size must be either Free or Standard"
  }
}

variable "domain_name" {
  type        = string
  description = "Domain name"
  default     = null
}

variable "validation_type" {
  type        = string
  description = "Validation type"
  default     = "dns-txt-token"
  validation {
    condition     = contains(["dns-txt-token", "cname-delegation"], var.validation_type)
    error_message = "Validation type must be either cname-delegation or dns-txt-token"
  }
}
