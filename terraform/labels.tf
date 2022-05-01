module "base_labels" {
  source   = "cloudposse/label/null"
  # Cloud Posse recommends pinning every module to a specific version
  version = "0.25.0"

  namespace  = var.namespace
  stage      = var.stage
#  name       = "bastion"
#  attributes = ["public"]
  delimiter  = "-"
  label_order = var.label_order

#  tags = {
#    "BusinessUnit" = "XYZ",
#    "Snapshot"     = "true"
#  }
}
