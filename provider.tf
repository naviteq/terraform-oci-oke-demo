# OCI provider
provider "oci" {
  alias                  = "home"
  region                 = var.region
  tenancy_ocid           = var.tenancy_ocid
  user_ocid              = var.user_ocid
  fingerprint            = var.fingerprint
  private_key_path       = var.private_key_path
  retry_duration_seconds = 1800
}
