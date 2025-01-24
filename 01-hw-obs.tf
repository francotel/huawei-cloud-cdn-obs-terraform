resource "random_pet" "name" {
  length = 2
}

locals {
  bucket-name = "hw-obs-origen-${random_pet.name.id}"
}

resource "huaweicloud_obs_bucket" "hw-obs" {
  bucket        = local.bucket-name
  acl           = "private"
  force_destroy = var.hw-force-destroy
  versioning    = false
  region        = var.hw-region
  storage_class = "STANDARD"
  encryption    = true
}