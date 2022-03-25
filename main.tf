terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.5.0"
    }
  }
}

provider "google" {
  # credentials =  using ADC

  project = "plucky-cargo-338320"
  region  = "us-central1"
  zone    = "us-central1-c"
}

resource "google_compute_network" "vpc_sharedservices" {
  name = "sharedservices-network"


}

resource "google_compute_network" "vpc_management" {
  name = "management-network"


}

