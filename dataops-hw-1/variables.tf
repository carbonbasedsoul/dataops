variable "project_id" {
  description = "Project ID to create resources in."
  type        = string
  default     = "dataops-478900"
}

variable "region" {
  description = "Region to place compute resources at."
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "Zone to place compute resource at."
  type        = string
  default     = "us-central1-a"
}

variable "machine_type" {
  description = "Machine type for GCE instance."
  type        = string
  default     = "e2-micro"
}

variable "machine_name" {
  description = "Compute Instance name."
  type        = string
  default     = "terraform-vm"
}
