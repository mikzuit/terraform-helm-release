provider "google" {
  project = "b221bdee5-ff7"
  region  = "europe-west3"
  zone    = "europe-west3-c"
}

data "google_client_config" "default" {}

data "google_container_cluster" "my_cluster" {
  name     = "b221bdee5-ff7"
  location = "europe-west3-c"
}

provider "kubernetes" {
  host                   = "https://${data.google_container_cluster.my_cluster.endpoint}"
  token                  = data.google_client_config.default.access_token
  cluster_ca_certificate = base64decode(data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate)
}

provider "helm" {
  kubernetes {
    host                   = "https://${data.google_container_cluster.my_cluster.endpoint}"
    token                  = data.google_client_config.default.access_token
    cluster_ca_certificate = base64decode(data.google_container_cluster.my_cluster.master_auth[0].cluster_ca_certificate)
  }
}

module "main" {
  source = "../.."

  helm_release_chart            = "echo-server"
  helm_release_chart_repository = "https://ealenn.github.io/charts"
  helm_release_description      = "dsafdsfa"
  helm_release_chart_version    = "0.3.0"
  helm_release_namespace        = random_pet.main.id
  helm_release_release_name     = random_pet.main.id
  helm_release_values = {
    "project_key" = "cb-1001-dev"
  }

  helm_release_sensitive_values = {
    "password" = "password here"
  }
}

module "main_force_release_false" {
  source = "../.."


  helm_release_force_helm_release = false

  helm_release_chart            = "echo-server"
  helm_release_chart_repository = "https://ealenn.github.io/charts"
  helm_release_description      = "dsafdsfa"
  helm_release_chart_version    = "0.3.0"
  helm_release_namespace        = random_pet.main.id
  helm_release_release_name     = random_pet.main_force_release_false.id
  helm_release_values = {
    "project_key" = "cb-1001-dev"
  }

  helm_release_sensitive_values = {
    "password" = "password here"
  }
}

resource "random_pet" "main" {
  keepers = {
    "key" = "value"
  }
}

resource "random_pet" "main_force_release_false" {
  keepers = {
    "key" = "value"
  }
}