resource "aws_eks_cluster" "this" {
  name     = var.cluster_name
  role_arn = aws_iam_role.eks_cluster.arn
  vpc_config {
    subnet_ids = var.private_subnet_ids
  }
  ...
}

resource "aws_eks_addon" "addons" {
  for_each = var.addons
  ...
}

resource "aws_eks_fargate_profile" "fargate" {
  count = var.enable_fargate ? 1 : 0
  ...
}