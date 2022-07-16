variable "bucket_name" {
  description = "THe name of the S3 bucket. Must be globally unique."
  type        = string
  default     = "tf-ldeng-ch3-bucket-1"
}

variable "table_name" {
  description = "The name of the DynamoDB table. Must be unique in this AWS account."
  type        = string
  default     = "tf-ldeng-ch3-table-1"
}
