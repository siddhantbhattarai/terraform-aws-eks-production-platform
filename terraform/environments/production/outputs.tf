output "cluster_name" { value = module.eks.cluster_name }
output "cluster_endpoint" {
  value     = module.eks.cluster_endpoint
  sensitive = true
}
output "cluster_security_group_id" { value = module.eks.cluster_security_group_id }
output "private_subnet_ids" { value = module.network.private_subnet_ids }
