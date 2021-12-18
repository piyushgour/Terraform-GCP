
variable "firewall_rule_name" {
  default =""
  type = string
}

variable "network_name" {
  default = ""
  type = string
}

variable "direction" {
  default = ""
  type = string
  description = "Possible values are INGRESS and EGRESS"
  
}
variable "source_network_list" {
  type = list
}

variable "protocol" {
  type = string
  default = ""
  description = "The protocol type is required when creating a firewall rule. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp, ipip, all), or the IP protocol number"
}

variable "ports" {
  type = list
  
}