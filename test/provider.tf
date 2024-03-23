terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "5.21.0"
    }
  }
}

provider "google" {
  project     = var.project
  region      = "asia-east1"
  zone ="asia-east1-a"
  credentials = file("creds.json")
}
