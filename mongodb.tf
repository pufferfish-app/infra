# Configure the MongoDB Atlas Provider 
provider "mongodbatlas" {
  public_key = var.mongodbatlas_public_key
  private_key  = var.mongodbatlas_private_key
}

resource "mongodbatlas_cluster" "db" {
    project_id = "67391f1f07aa7d67bf2b51dc"
    name = "db-cluster"
    provider_name = "TENANT"
    backing_provider_name = "AWS"
    provider_region_name = "US_EAST_1"
    provider_instance_size_name = "M0"
}