# Terraform Jumphost Module

This module supports creating:

- A Instance module



## Usage

Basic usage of this submodule is as follows:

```hcl
module "instance" {
    source          = "git@github.com:piyushgour/Terraform-GCP.git/gcp-instances?ref=main"
    project         = "<PROJECT ID>" eg.gcpe0002
    description     = "<Optional Description>"
    name         = "<your_machine_name>"
    machine_type = "<Machine_tyep>" eg. "e2-micro"

    region          = <list of regions> eg. ["us-west1","us-east1"]
    zone         = "<zone_id>" eg. "us-central1-a"
    
    image = "<OS_image_name>" eg. "<ubuntu-os-cloud/ubuntu-1804-lts>"
    
    network          = "<VPC Network ID>"
    subnetwork      = "<Subnet of Network>"
   ssh-key = "<your_key_name>:<your_public_key_path>" eg. "testuser:./ssh-keys/id_rsa.pub" 
    
    
}

provider "google" {
  project = <PROJECT ID>
}

terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.52.0"
    }
  }

  required_version = "= 1.0.11"
}

terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-bucket" #Replace with the name of the bucket created above
    prefix = "instance-state" #creates a new folder
  }
}
```
Note: Check default subnets variable and overwrite with desired names.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| project | The ID of the project where these resources will be created | `string` | n/a | yes |
| description| Optional description | `string` | n/a | no |
| name| Instance Name | `string` | n/a | no |
| machine_type| compute capacity of instance | `string` | n/a | yes |
| region | The region where this these resources will be created | `string` | n/a | no |
| zone   | Zone where to machine deployed in a zone | `string` | n/a | no |
| image| OS Image like ubuntu/RHEL/Windows | `string` | n/a | yes |
| network | The name of the network where Instance to deployed; set to "defaul" if not specific VPC | `string` | n/a | yes |
| subnetwork | The name of the subnetwork where Instance to deployed in Network; set to "defaul" if not specific Subnetwork | `string` | n/a | yes |

