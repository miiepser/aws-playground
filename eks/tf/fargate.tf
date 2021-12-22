# configuration for fargate for eks

resource "aws_eks_fargate_profile" "eks_fargate" {
  cluster_name           = aws_eks_cluster.piepsi.name
  fargate_profile_name   = var.clusterName
  pod_execution_role_arn = aws_iam_role.eks_fargate.arn
  subnet_ids             = values(aws_subnet.eks).*.id

  selector {
    namespace = "eclipse-che"
  }
}
