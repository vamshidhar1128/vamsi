resource "google_compute_instance" "default" {
  name         = var.compute_instance_name
  machine_type = "n1-standard-1"
  allow_stopping_for_update = var.allow_stopping
  

  tags = ["http-server"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }



  network_interface {
    network = "vamsi-cloud-vpc"
    subnetwork = "vamsi-cloud-subnet"

    access_config {
      // Ephemeral public IP
    }
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = "echo hi > /test.txt"

 
}
