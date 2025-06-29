output "public_subnets" {
  value = module.networking.public_subnets
}

output "instance_ids" {
  value = module.compute.instance_ids
}

output "vpc_id" {
  value = module.networking.vpc_id
}
