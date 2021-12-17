variable "ssh_key_name" {
  type = string
  default = "piyush-gcp-pub-key"
}

variable "key_path" {
  default = "./ssh-keys/id_rsa.pub"
}