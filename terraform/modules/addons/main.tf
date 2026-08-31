resource "aws_eks_addon" "this" {
  for_each                    = toset(["vpc-cni", "coredns", "kube-proxy", "aws-ebs-csi-driver"])
  cluster_name                = var.cluster_name
  addon_name                  = each.value
  resolve_conflicts_on_create = "OVERWRITE"
}
