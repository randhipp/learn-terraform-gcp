variable "projectId" {
  type = string
}

variable "region" {
  type = string
}

variable "zone" {
  type = string
}

provider "google" {
  credentials = file("./../learn-terraform-353203-03f2fabf14a9.json")

  project = var.projectId
  region  = var.region
  zone    = var.zone
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "terraform-instance"
  machine_type = "f1-micro"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-9"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {
    }
  }
}
