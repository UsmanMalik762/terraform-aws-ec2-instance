This module is used to provision an ec2 in AWS. Provide the following parameters and launch an ec2 in your required region.

**Usage:**
```hcl
terraform {

}

provider "aws" {

    profile = "default"
    region = "your-region"
}


module "ec2" {

 source="UsmanMalik762/ec2-instance/aws"
 
 ami_id="ami-0b4946d7420c44be4 "  
 
 instance_type="t2.micro"
 
 key_name="Your key to access the instance"
 
 volume_type="Provide the volume type for your root volume"
 
 root_volume_size="volume size in integers"
 
 instance_tag="Provide Name tag for your instance "
 
 sg_id = ["Provide list of secuirty group to associate with instance"]
 
 script_path = "Absolute path for your cloud-init script"  
 
}
```
