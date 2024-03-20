terraform {

  # !!!
  # Please read this article to learn how you can store state remotely
  # https://docs.oracle.com/en-us/iaas/Content/API/SDKDocs/terraformUsingObjectStore.htm
  # !!!

  required_providers {
    oci = {
      source  = "oracle/oci"
      version = "5.33.0"
    }
  }
}
