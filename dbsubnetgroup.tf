resource "aws_db_subnet_group" "dbsubnetgroup" {
    name = "dbsubgroup"
    subnet_ids = [ var.private_subnets[0],var.private_subnets[1] ]
    tags = {
      "name" = "dbsubnetgroup"
    }
depends_on = [
  aws_security_group.sg_vpc
]
}