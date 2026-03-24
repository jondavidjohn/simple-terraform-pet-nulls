variable "pet_prefix" {
  description = "Prefix applied to each generated pet name."
  type        = string
}

variable "null_context" {
  description = "Context string recorded in the null_resource triggers."
  type        = string
}

variable "operator_secret" {
  description = "Sensitive operator-provided value required at runtime."
  type        = string
  sensitive   = true
}

variable "run_label" {
  description = "Run label supplied at runtime."
  type        = string
}
