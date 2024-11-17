# Configure the DigitalOcean Provider
provider "digitalocean" {
  token = var.do_token
}

resource "digitalocean_app" "pufferfish" {
    spec {
        name = "pufferfish"
        region = "nyc"

        service {
            name = "pufferfish-api"
            instance_count = 1
            instance_size_slug = "apps-s-1vcpu-0.5gb"

            image {
                registry_type = "GHCR"
                registry = "pufferfish-app"
                repository = "api"
                tag = "main"
            }

            env {
                key = "DB_NAME"
                value = var.api_db_name
            }

            env {
                key = "ATLAS_URI"
                value = var.api_atlas_uri
                type = "SECRET"
            }

            env {
                key = "LLM_BASE_URL"
                value = var.llm_base_url
            }

            env {
                key = "LLM_API_KEY"
                value = var.llm_api_key
                type = "SECRET"
            }
        }
    }
}
