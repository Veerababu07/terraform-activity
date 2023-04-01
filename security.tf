resource "aws_security_group" "sg_vpc" {
    description = "for the security group"
    tags = {
      "name" = "my_securitygroup"
    }
    ingress  {
      cidr_blocks = [local.anywhere]
      description = "for mysql database"
      from_port = local.mysql_port
      #ipv6_cidr_blocks = [ "value" ]
      #prefix_list_ids = [ "value" ]
      protocol = local.tcp
      #security_groups = [ "value" ]
      #self = false
      to_port = local.mysql_port
    } 
    vpc_id = module.vpc.vpc_id

    depends_on = [
      module.vpc
    ]
}