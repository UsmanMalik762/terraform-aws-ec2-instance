This module is used to provision an ec2 in AWS. Use the following parameters to install the module and launch an ec2 instance in your required region.

Usage:

terraform {

}

provider "aws" {
    profile = "default"
    region = "your-region"
}


module "ec2" {
 source="../terraform-aws-ec2-instance"
 ami_id="ami-0b4946d7420c44be4 "  
 instance_type="t2.micro"
 key_name="your_key"
 root_volume_size="volume size in integers"
 instance_tag="Provide Name tag for your instance "
 sg_id = ["Provide list of secuirty group to associate with instance"]
 script_path = "Absolute path for your cloud-init script"  
}

