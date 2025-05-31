resource "aws_eks_cluster" "eks" {
    name     = "${var.environment}-${var.cluster_name}"
    role_arn = aws_iam_role.eks_cluster_role.arn
    version  = var.eks_version
    vpc_config {
        subnet_ids = concat(var.public_subnet_ids, var.private_subnet_ids)
        endpoint_public_access  = true
        endpoint_private_access = true
    }

    depends_on = [
        aws_iam_role_policy_attachment.eks_cluster_policy,
        aws_iam_role_policy_attachment.eks_vpc_resource_controller_policy
    ]
    tags = {
        Name        = "${var.environment}-${var.cluster_name}"
        Environment = var.environment
    }
}