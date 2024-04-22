variable "identifier" {
  default     = "qxz50zw"
  description = "Variable to describe resources created by you"
}

variable "project_name" {
  default = "da7"
  description = "Name of the project"
}

variable "storage_S3" {
  default = "da7-tf-exercise-2"
  description = "Name of the bucket that stores the images"
}

locals {
  prefix = "${var.project_name}_${var.identifier}"
}