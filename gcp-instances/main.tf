#gcloud auth application-default login
provider "google" {
    project = "hv-cloudservices-lab"
    region = "us-central1"
    credentials = "application_default_credentials.json" #for Service account creds.
  
}

resource "google_compute_instance" "terraform" {
    name = "test-terraform"
    machine_type = "e2-micro"
    zone = "us-central1-a"


    boot_disk {
      initialize_params {
          image = "ubuntu-os-cloud/ubuntu-1804-lts"
      }
    }

    network_interface {

        # A default network is created for all GCP projects
        network = "default"
        subnetwork = "default"
        access_config {
            //
        }
    }

    metadata = {
     ssh-keys = "${var.ssh_key_name}:${file(var.key_path)}"
    
    }
}