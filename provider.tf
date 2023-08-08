

provider "aws" {
  region = "us-west-2"
}


# Setting Up Remote State
terraform {
  # Terraform version at the time of writing this post
  required_version = ">= 0.14.0"

  backend "s3" {
    bucket = "7f2fd56a-bdd3-4fe0-aa49-3731bad0ba73-tfstate"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
