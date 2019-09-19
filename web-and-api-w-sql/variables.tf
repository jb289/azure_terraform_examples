variable "TENANT_ID" {}

variable "sub_name" {
  description = "Name of subscription"
  default     = "lab"
}

variable "sub_loc_1" {
  description = "Full location name 1"
  default     = "southcentralus"
}

variable "sub_loc_2" {
  description = "Full location name 2"
  default     = "northcentralus"
}

variable "sub_loc_abbrev_1" {
  description = "Abbreviation of location 1"
  default     = "scus"
}

variable "sub_loc_abbrev_2" {
  description = "Abbreviation of location 2"
  default     = "ncus"
}

variable "system_name" {
  description = "System Name (usually 3 character app code)"
  default     = "trfm"
}

variable "app_name" {
  description = "Application Name"
  default     = "app"
}

variable "tag_application" {
  description = "Application Tag Value"
  default     = "CPT"
}

variable "tag_owner" {
  description = "Owner Tag Value"
  default     = "KTG-Arch"
}

