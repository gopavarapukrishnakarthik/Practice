provider "aws" {
    access_key = "AKIA47Z4UNQDAW2PGLXM"
    secret_key = "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"
    region = "us-east-2"
}

terraform {
  required_version = "<= 1.3.14" #Forcing which version of Terraform needs to be used
  required_providers {
    aws = {
      version = "<= 5.0.0" #Forcing which version of plugin needs to be used.
      source = "hashicorp/aws"
    }
  }
}

resource "aws_instance" "" {
  ami           = var.ami
  instance_type = var.instance_type

  network_interface {
    network_interface_id = var.network_interface_id
    device_index         = 0
  }

  credit_specification {
    cpu_credits = "unlimited"
  }
}