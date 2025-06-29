variable "instance_count" {}
variable "ami" {}
variable "instance_type" {}
variable "subnet_ids" { type = list(string) }
variable "key_pair_name" {}
variable "environment" {}
variable "tags" { type = map(string) }
