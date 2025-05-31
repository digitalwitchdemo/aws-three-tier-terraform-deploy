resource "aws_iam_role" "eks_node_group_role" {
  name = "${var.environment}-eks-node_group-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      }
    ]
  })

  tags = {
    Name        = "${var.environment}-eks-node_group-role"
    Environment = var.environment
  }
  
}
# Attach the AmazonEKSWorkerNodePolicy to the EKS node group role
resource "aws_iam_role_policy_attachment" "eks_worker_node_policy" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

# Attach the AmazonEKS_CNI_Policy to the EKS node group role
resource "aws_iam_role_policy_attachment" "eks_cni_policy" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}
# Attach the AmazonEC2ContainerRegistryReadOnly policy to the EKS node group role
resource "aws_iam_role_policy_attachment" "ec2_container_registry_policy" {
    role       = aws_iam_role.eks_node_group_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"   
}
# The AmazonEKSNodePolicy does not exist; skipping attachment.
# Attach the AmazonEKSFargatePodExecutionRolePolicy to the EKS node group role
resource "aws_iam_role_policy_attachment" "eks_fargate_pod_execution_role_policy" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSFargatePodExecutionRolePolicy"
}
# Attach the AmazonSSMManagedInstanceCore policy to the EKS node group role
resource "aws_iam_role_policy_attachment" "ssm_managed_instance_core_policy" {
    role       = aws_iam_role.eks_node_group_role.name
    policy_arn = "arn:aws:iam::aws:policy/AmazonSSMManagedInstanceCore" 

}
resource "aws_iam_role_policy_attachment" "eks_elb_permissions" {
  role       = aws_iam_role.eks_node_group_role.name
  policy_arn = "arn:aws:iam::aws:policy/ElasticLoadBalancingFullAccess"
}

