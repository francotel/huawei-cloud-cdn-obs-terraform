variable "hw-profile" {
  description = "Huawei Cloud Profile"
  type        = string
}

variable "hw-region" {
  description = "Huawei Cloud region"
  type        = string
  default     = "us-central1"
}

variable "hw-config-file" {
  description = "Huawei Cloud Config File path"
  type        = string
}

variable "hw-force-destroy" {
  description = "Delete OBS Storage"
  default     = true
}