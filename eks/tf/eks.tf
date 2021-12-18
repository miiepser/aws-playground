resource "aws_eks_cluster" "piepsi" {
  depends_on = [aws_cloudwatch_log_group.cluster_logs]
  name       = var.clusterName
  role_arn   = aws_iam_role.cluster_role.arn

  vpc_config {
    subnet_ids = values(aws_subnet.eks).*.id
  }
}
output test {
    value =aws_subnet.eks
}