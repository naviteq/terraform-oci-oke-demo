# Cluster
output "cluster_id" { value = module.oke.cluster_id }
output "cluster_name" { value = var.project }

# Network
output "vcn_id" { value = module.oke.vcn_id }
output "control_plane_subnet_id" { value = module.oke.control_plane_subnet_id }

# Workers
output "worker_shape" { value = var.worker_shape }
output "worker_size" { value = var.worker_size }
