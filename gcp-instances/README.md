https://ctxt.io/2/AABgKcKHEg

# Terraform Jumphost Module

This module supports creating:

- A Jumphost Instance



## Usage

Basic usage of this submodule is as follows:

```hcl
module "network" {
    source          = "github.com/piyushgour/Terrafrom.git/tfm/6-jumphost?ref=master"
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
    bucket = "tf-state-gcpe003" #Replace with the name of the bucket created above
    prefix = "network-state" #creates a new folder
  }
}
```
Note: Check default subnets variable and overwrite with desired names.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| provision\_vpc | Flag to create VPC network | `bool` | true | yes |
| network\_name | The name of the network being created; set to "defaul" if not creating VPC | `string` | n/a | yes |
| project\_id | The ID of the project where these resources will be created | `string` | n/a | yes |
| description| Optional description | `string` | n/a | no |
| environment | The environment where these resources will be created | `string` | n/a | yes |
| region | The region where this these resources will be created | `string` | n/a | yes |
| subnet | The subnets name, CIDR and regions | `map` | n/a | no |


## Outputs

| Name | Description |
|------|-------------|
| network | The VPC resource being created |
| network\_id | The ID of the VPC being created |
| network\_name | The name of the VPC being created |
| network\_self\_link | The URI of the VPC being created |
| domain | The DNS zone domain. |
| name | The DNS zone name. |
| name\_servers | The DNS zone name servers. |
| type | The DNS zone type. |
| router | The created router |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
This paste expires in <1 hour. Public IP access. Share whatever you see with others in seconds with Context. Terms of ServiceReport this
