variable "instance_tag" {
    type = string
    description="Provide instance tag to associate " 
}

variable "root_volume_size" {
    type = string
    description = "Root volume size (20,30)"
    default = "8"
}

variable "volume_type" {
    type = string
    description = "Root Volume type (gp2,gp3)"
    default = "gp2"
}

variable "instance_type" {
    type = string
    description = "Provide ec2 instance tpye (t2.medium,t2.micro)"
    default = "t2.mirco"
}

variable "ami_id" {
    type = string
    description = "Provide id of the AMI"
  
}

variable "key_name" {
    type = string
    description = "Proivde key name of existing key-value pair."
}

variable "script_path" {
    type = string
    description = "Provide scirpt path for your cloud-init script"
    default = "./userdata.yaml"
}

variable "sg_id" {
    type = list(string) 
    description= "Provide the list of security group ids to associate with."
    default = null
}