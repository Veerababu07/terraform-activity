variable "region" {
  type    = string
  default = "ap-south-2"
}
variable "vpc_name" {
  type = string


}
variable "vpc_cidr" {
  type = string

}

variable "private_subnets" {
  type        = list(string)
  description = "for private subnets"
}
variable "public_subnets" {
  type = list(string)

}

variable "azs" {
  type = list(string)
  
}