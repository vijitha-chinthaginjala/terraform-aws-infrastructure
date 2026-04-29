variable "environment" {
  description = "Environment name (dev, staging, production)"
  type        = string
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "app-storage"
}
