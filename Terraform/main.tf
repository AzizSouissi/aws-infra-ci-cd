provider "aws" {
    region = "eu-west-3"
    profile = var.profile
}

module "ec2_instance" {
    source = "./modules/ec2"
}