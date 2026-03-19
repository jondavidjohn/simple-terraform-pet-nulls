terraform {
  required_version = ">= 1.10.0"

  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "primary" {
  length    = 2
  prefix    = var.pet_prefix
  separator = "-"
}

resource "random_pet" "secondary" {
  length    = 3
  prefix    = var.pet_prefix
  separator = "-"
}

resource "null_resource" "primary" {
  triggers = {
    pet_name = random_pet.primary.id
    purpose  = var.null_context
  }
}

resource "null_resource" "secondary" {
  triggers = {
    pet_name = random_pet.secondary.id
    purpose  = "${var.null_context}-secondary"
  }
}
