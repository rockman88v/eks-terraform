# module "eks" {
#   source = "../../modules/eks"

#   cluster_name         = var.cluster_name
#   vpc_id               = module.network.vpc_id
#   private_subnet_ids   = module.network.private_subnet_ids
#   enable_fargate       = true
#   fargate_namespace    = "karpenter"

#   addons = {
#     vpc-cni = {
#       version              = "v1.15.2-eksbuild.1"
#       configuration_values = jsonencode({ env = { ENABLE_PREFIX_DELEGATION = "true" } })
#     }
#     coredns = { version = "v1.11.1-eksbuild.2" }
#     kube-proxy = { version = "v1.29.0-eksbuild.1" }
#   }
# }
