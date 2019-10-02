variable "public_key_path" {
  description = <<DESCRIPTION
Path to the SSH public key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/myapp.pub
DESCRIPTION
}

variable "private_key_path" {
  description = <<DESCRIPTION
Path to the SSH private key to be used for authentication.
Ensure this keypair is added to your local SSH agent so provisioners can
connect.

Example: ~/.ssh/myapp.pem
DESCRIPTION
}


variable "key_name" {
  description = "key-name"
}

variable "aws_region" {
  description = "AWS region to launch servers."
  default     = "eu-west-3"
}

# Ubuntu Precise 12.04 LTS (x64)
variable "aws_amis" {
  default = {
    eu-west-3 = "ami-03bca18cb3dc173c9"
  }
}
