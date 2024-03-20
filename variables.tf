# Project name
variable "project" {
  type        = string
  default     = "skylark"
  description = "Project name"
}

# Environment
variable "environment" {
  type        = string
  default     = "demo"
  description = "Environment"
}

# Tenancy id
variable "tenancy_id" {
  type        = string
  default     = "tenancy"
  description = "Tenancy"
}

# Tenancy OCID
variable "tenancy_ocid" {
  type        = string
  default     = "ocid1.tenancy.oc1..tenancy"
  description = "Tenancy OCID"
}

# OCI Region
variable "region" {
  type        = string
  default     = "eu-frankfurt-1"
  description = "OCI region"
}

# Compartment OCID
variable "compartment_id" {
  type        = string
  default     = "ocid1.compartment.oc1..compartment"
  description = "Compartment OCID"
}

# User OCID
variable "user_ocid" {
  type        = string
  default     = "<replace-value-using-cli.auto.tfvars-file>"
  description = "User OCID"
}

# Private key path
variable "private_key_path" {
  type        = string
  default     = "<replace-value-using-cli.auto.tfvars-file>"
  description = "Private key location path"
}

# Public key fingerprint
variable "fingerprint" {
  type        = string
  default     = "<replace-value-using-cli.auto.tfvars-file>"
  description = "Public key fingerprint"
}

# OKE Version
variable "kubernetes_version" {
  type        = string
  default     = "v1.28.2"
  description = "OKE Kubernetes version"
}

# OKE Control Plane
variable "cluster_type" {
  type        = string
  default     = "basic"
  description = "OKE Control Plane"
}

# Node pool for Kuberntes cluster
variable "worker_shape" {
  type        = string
  default     = "VM.Standard.E4.Flex"
  description = "Worker node shape"
}

variable "worker_ocpus" {
  type        = number
  default     = 2
  description = "Worker Oracle CPU"
}

variable "worker_memory" {
  type        = number
  default     = 16
  description = "Worker Memory in Gb"
}

variable "worker_size" {
  type        = number
  default     = 3
  description = "Number of worker nodes"
}

variable "worker_boot_volume_size" {
  type        = number
  default     = 50
  description = "Worked node boot volume size"
}

# VCN CIDR
variable "vcn_cidr" {
  type        = string
  default     = "10.0.0.0/16"
  description = "Virtual Cloud Network CIDR"
}
