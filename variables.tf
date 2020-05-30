variable "aws_region" {
  description = "AWS region on which we will setup the swarm cluster"
  default     = "us-east-1"
}

# variable "ami" {
#   description = "Amazon Linux AMI"
#   default     = "ami-4fffc834"
# }

variable "instance_type_master" {
  description = "Instance type"
  default     = "t2.medium"
}

variable "instance_type_worker" {
  description = "Instance type"
  default     = "t2.medium"
}

variable "instance_type_lb" {
  description = "Instance type"
  default     = "t2.micro"
}

variable "key_path" {
  description = "SSH Public Key path"
  default     = "~/.ssh/id_rsa.pub"
}

variable "bootstrap_path" {
  description = "Script to install Docker Engine"
  default     = "install-docker.sh"
}

variable "private-key" {
  description = "SSH private key"
  default     = "~/.ssh/id_rsa"
}

variable "tags" {
  # type = "map"
  default = {
    Repo      = "https://https://github.com/minhdat97/minhdat-portfolio"
    Terraform = true
  }
}
