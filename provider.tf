// Configuration of Provider
provider "aws" {
  region = var.region
}

// Generic configuration for any region
data "aws_region" "current" {}
data "aws_availability_zones" "available" {}
