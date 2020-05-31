variable "project_id" {
  description = "learn-packer project_id"
  default     = "learn-packer-278806"
}

variable "region" {
  description = "learn-packer default region"
  default     = "asia-northeast1"
}

variable "zone" {
  description = "learn-packer default zone"
  default     = "asia-northeast1-a"
}

variable "machine_type" {
  description = "machine type of compute engine instance"
  default     = "n1-standard-1"
}

variable "image_tag" {
  description = "image tag of test-image"
}
