variable "helm_release_values" {
  type    = map(string)
  default = {}
}

variable "helm_release_values_type" {
  type    = string
  default = "auto"
}
variable "helm_release_string_values" {
  type    = map(string)
  default = {}
}

variable "helm_release_string_values_type" {
  type    = string
  default = "auto"
}

variable "helm_release_sensitive_values" {
  type    = map(string)
  default = {}
}

variable "helm_release_sensitive_values_type" {
  type    = string
  default = "auto"
}

variable "helm_release_chart" {
  type = string
}

variable "helm_release_chart_repository" {
  type = string
}

variable "helm_release_description" {
  type = string
}

variable "helm_release_release_name" {
  type = string
}

variable "helm_release_namespace" {
  type = string
}

variable "helm_release_chart_version" {
  type = string
}

variable "helm_release_timeout" {
  type    = string
  default = 120
}

variable "helm_release_repository_username" {
  type    = string
  default = ""
}

variable "helm_release_repository_password" {
  type    = string
  default = ""
}

variable "helm_release_verify" {
  type    = bool
  default = false
}

variable "helm_release_skip_crds" {
  type    = bool
  default = false
}

variable "helm_release_cleanup_on_fail" {
  type    = bool
  default = false
}

variable "helm_release_lint" {
  type    = bool
  default = false
}

variable "helm_release_replace" {
  type    = bool
  default = false
}

variable "helm_release_wait" {
  type    = bool
  default = true
}

variable "helm_release_force_helm_release" {
  type    = bool
  default = true
}

variable "helm_release_force_update" {
  type    = bool
  default = false
}

variable "helm_release_create_namespace" {
  type    = bool
  default = false
}

variable "helm_release_prevent_create_namespace" {
  type    = bool
  default = false
}

variable "helm_release_atomic" {
  type    = bool
  default = false
}

variable "helm_release_recreate_pods" {
  type    = bool
  default = false
}

variable "helm_release_reset_values" {
  type    = bool
  default = false
}

variable "helm_release_reuse_values" {
  type    = bool
  default = false
}

variable "helm_release_max_history" {
  type    = number
  default = 5
}

variable "helm_release_value_files" {
  type    = string
  default = ""
}