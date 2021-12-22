module "instacne" {
  source       = "github.com:piyushgour/Terraform-GCP.git/gcp-instances?ref=main"
  project      = "<PROJECT ID>" //eg.gcpe0003
  description  = "<Optional Description>"
  name         = "<your_machine_name>"
  machine_type = "<Machine_tyep>"      //eg. "e2-micro"
  region       = "<list of regions>"   //eg. ["us-west1","us-east1"]
  zone         = "<zone_id>"           //eg. "us-central1-a"
  image        = "<OS_image_name>"     //eg. "<ubuntu-os-cloud/ubuntu-1804-lts>"
  network      = "<VPC Network ID>"    //eg. "network-003"
  subnetwork   = "<Subnet of Network>" // eg. "subnet-003"


}