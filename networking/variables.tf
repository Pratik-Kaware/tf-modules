variable "vpc_cidr" {}
variable "public_subnets" { type = list(string) }
variable "azs" {
    type = list(string)
}
variable "environment" {
  description = "The environment name"
}
variable "tags" {type = map(string)}
