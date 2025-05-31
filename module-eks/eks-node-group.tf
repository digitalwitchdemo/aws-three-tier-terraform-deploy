resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks.id
  node_group_name = "${var.environment}-eks-node-group"
  node_role_arn   = aws_iam_role.eks_node_group_role.arn
  subnet_ids = concat(var.public_subnet_ids, var.private_subnet_ids)
  version         = var.eks_version
  capacity_type   = var.capacity_type
  ami_type = var.ami_type 
  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }
  
  instance_types = var.instance_types
  labels = {
    role = var.label_one
    environment = var.environment
  }

  tags = {
    Name        = "${var.environment}-eks-node-group"
    Environment = var.environment
  }

  depends_on = [
    aws_iam_role_policy_attachment.eks_worker_node_policy,
    aws_iam_role_policy_attachment.eks_cni_policy,
    aws_iam_role_policy_attachment.ec2_container_registry_policy,
    aws_iam_role_policy_attachment.eks_fargate_pod_execution_role_policy,
    aws_iam_role_policy_attachment.ssm_managed_instance_core_policy
  ]
  
}