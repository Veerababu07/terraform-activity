region          = "ap-south-1"
vpc_name        = "ntirevps"
vpc_cidr        = "172.168.0.0/16"
azs         = ["ap-south-1a", "ap-south-2a"]
private_subnets = ["172.168.0.0/24", "172.168.1.0/24", "172.168.2.0/24"]
public_subnets = ["172.168.3.0/24", "172.168.4.0/24"]