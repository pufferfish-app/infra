terraform {
    required_providers {
        mongodbatlas = {
            source = "mongodb/mongodbatlas"
            version = "~> 1.21"
        }
        digitalocean = {
            source = "digitalocean/digitalocean"
            version = "~> 2.0"
        }
    }
}