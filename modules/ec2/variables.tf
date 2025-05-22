variable "basic_info" {
  description = "The basic info required for all resources"
  type = object({
    application           = string
    environment           = string
    location              = string
    tags                  = map(string)
  })
  default = null
}

variable "instance_type" {
  description = "The SKU of the EC2 instance"
}

variable "ami_id" {
  description = "The ID of the AMI being passed in"
}

variable "ami_owner" {
  description = "The Owner the AMI being passed in"
  default     = null
}

variable "ami_root_type" {
  description = "The Type of the Root Device of the AMI"
  default     = null
}

variable "ami_virtualization_type" {
  description = "The Type of the Virtualization of the AMI"
  default     = null
}