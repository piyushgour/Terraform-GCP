## Firewall-rules module for Google Cloud Platform

Creates and manages Network Firewall rules on GCP

**Basic usage**

```hcl
module firewall-module {
  source = "github.com:piyushgour/Terraform-GCP.git/firewall-rules?ref=main"
  firewall_rule_name = "allow-ssh-rule"
  network_name = "vpc-network"
  direction = "INGRESS"
  protocol = "tcp"
  ports = ["22"]
  source_network_list = ["0.0.0.0/0"]
}
```

## Variables
|Name|Description|Type|Default|Required|
|----|-----------|:----:|:-------:|:--------:|
|firewall_rule_name|Name of the Firewall rule|String| - |Yes|
|network_name|The name or self_link of the network to attach this firewall to|String| - |Yes|
|direction|Direction of traffic to which this firewall applies; default is INGRESS. Possible values are INGRESS and EGRESS|String| INGRESS |No|
|source_network_list|A list of source CIDR ranges that this firewall applies to. Can't be used for EGRESS|List| - |Yes|
|protocol|The name of the protocol to allow. This value can either be one of the following well known protocol strings (tcp, udp, icmp, esp, ah, sctp), or the IP protocol number, or all|String| - |Yes|
|ports|List of ports and/or port ranges to allow. This can only be specified if the protocol is TCP or UDP|List| - |Yes|

