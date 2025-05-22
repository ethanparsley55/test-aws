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

variable "ami_name" {
  description = "The Name (ID) of the AMI being passed in"
}

variable "ami_owner" {
  description = "The Owner the AMI being passed in"
}

variable "ami_root_type" {
  description = "The Type of the Root Device of the AMI"
}

variable "ami_virtualization_type" {
  description = "The Type of the Virtualization of the AMI"
}