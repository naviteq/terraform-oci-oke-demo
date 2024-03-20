# OKE Cluster
module "oke" {
  source    = "oracle-terraform-modules/oke/oci"
  version   = "5.1.3"
  providers = { oci.home = oci.home }

  # Identity
  tenancy_id     = var.tenancy_id
  compartment_id = var.compartment_id
  user_id        = var.user_ocid
  home_region    = var.region
  region         = var.region

  # OKE
  cluster_name                      = var.project
  cluster_type                      = var.cluster_type
  control_plane_is_public           = true
  assign_public_ip_to_control_plane = true
  kubernetes_version                = var.kubernetes_version

  # Extra flags
  create_cluster  = true
  create_bastion  = false
  create_operator = false

  # Network
  create_vcn                  = true
  vcn_cidrs                   = [var.vcn_cidr]
  vcn_name                    = var.project
  vcn_dns_label               = var.project
  vcn_create_internet_gateway = "auto"
  vcn_create_nat_gateway      = "auto"
  vcn_create_service_gateway  = "never"
  create_drg                  = false
  control_plane_allowed_cidrs = ["0.0.0.0/0"]

  # Worker nodes
  allow_worker_ssh_access      = false
  allow_worker_internet_access = true
  kubeproxy_mode               = "iptables"
  worker_is_public             = false
  worker_image_type            = "oke"
  worker_pool_mode             = "node-pool"
  worker_pools = {
    skylark = {
      shape            = var.worker_shape
      ocpus            = var.worker_ocpus
      memory           = var.worker_memory
      size             = var.worker_size
      boot_volume_size = var.worker_boot_volume_size
    }
  }

  # Load balancers
  load_balancers          = "public"
  preferred_load_balancer = "public"
  allow_rules_public_lb = {
    http = {
      protocol    = 6
      port        = 80
      source      = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
    }
    https = {
      protocol    = 6
      port        = 443
      source      = "0.0.0.0/0"
      source_type = "CIDR_BLOCK"
    }
  }
}
