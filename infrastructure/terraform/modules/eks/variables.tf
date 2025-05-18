variable "cluster_name" {}
variable "vpc_id" {}
variable "private_subnet_ids" { type = list(string) }
variable "enable_fargate" { type = bool }
variable "fargate_namespace" { default = "karpenter" }
variable "addons" {
  type = map(object({
    version               = optional(string)
    configuration_values  = optional(string)
    service_account_role_arn = optional(string)
  }))
  default = {}
}
