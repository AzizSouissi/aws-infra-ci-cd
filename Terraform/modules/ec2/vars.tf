variable "instance_type" {
    type = string
    default = "t2.micro"
}

variable "instance_ami" {
    type = map(string)
    default = {
        id = "ami-0a5ee67e16e2e3530"
        user = "ubuntu"
    }
}

variable "key-pair-name" {
    type = string
    default = "ci_cd_key"
}