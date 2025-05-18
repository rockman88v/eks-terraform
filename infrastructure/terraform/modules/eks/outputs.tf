output "cluster_name" {
  value = aws_eks_cluster.this.name
}
output "fargate_profile_name" {
  value = try(aws_eks_fargate_profile.fargate[0].fargate_profile_name, null)
}