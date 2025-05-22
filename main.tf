##########################################################
##              LOCAL VARIABLES & CONFIG                ##
##########################################################
locals {
  environment   = var.env_config.environment    
  location      = var.env_config.location
  tags          = var.env_config.tags
}

##########################################################
##              PARTNER ADAPTER RESOURCES               ##
##########################################################

#--------------------------------------------------------#
#-             Partner Adapter EC2 Instance             -#
#--------------------------------------------------------#
module "PartnerAdapter_EC2" {
  source            = "./modules/ec2"
  basic_info  = {
    application     = "partner"
    environment     = local.environment
    location        = local.location
    tags            = local.tags
  }

  instance_type             = "m5a.2xlarge"

  ami_name                  = "ami-0fd4271cf3adce206" # Microsoft Server Base 2022
  ami_owner                 = "microsoft"
  ami_root_type             = "ebs"
  ami_virtualization_type   = "hvm"
}