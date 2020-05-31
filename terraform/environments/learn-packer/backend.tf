terraform {
  backend "gcs" {
    bucket = "learn-packer-tfstate"
    prefix = "terraform/state/learn-packer"
  }

  required_version = ">= 0.12"
}
