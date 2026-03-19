output "pet_names" {
  description = "Generated names from the two random_pet resources."
  value = {
    primary   = random_pet.primary.id
    secondary = random_pet.secondary.id
  }
}

output "null_resource_ids" {
  description = "IDs of the null resources created from local trigger values."
  value = {
    primary   = null_resource.primary.id
    secondary = null_resource.secondary.id
  }
}
