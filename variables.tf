variable "region" {
  type        = string
  default     = "us-east-2"
  description = "Ohio region"
}

variable "count_of_private_subnets" {
    default = 2
}

variable "count_of_public_subnets" {
    default = 2
}