terraform {
  cloud {
    organization = "balnovak"

    workspaces {
      name = "terraform-acc-demo-balnovak"
    }
  }
}

module "aci" {
  source  = "netascode/nac-aci/aci"
  version = "0.7.0"

  yaml_directories          = ["data"]
  manage_tenants            = true
  write_default_values_file = "defaults.yaml"
}
