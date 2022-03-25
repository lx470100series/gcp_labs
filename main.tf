terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  credentials = file("./plucky-cargo-338320-9fdfadcceda7.json")

  project = "plucky-cargo-338320"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_network" {
  name = "tf-shared-services"


}

resource "google_compute_network" "vpc_network" {
  name = "management-network"


}

