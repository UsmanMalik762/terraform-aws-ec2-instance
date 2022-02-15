This module is for ec2 provision kindly provide the required variable value to provision an ec2 in AWS. 
module "ec2" {
 source="./modules-for-ec2-provision"
 ami_id="ami-0851b76e8b1bce90b"  
 instance_type="t2.micro" #provide the instance type 
 key_name="if you have an existing key pair kindly provide the name of key to acceess the instance"
 root_volume_size="20 (Provide volume size )"
 instance_tag="Provide Name tag to attach with instance and it's respective EIP,Volume"
 script_path="Absolute path for your script (/home/script/)"
 sg_id = ["id of the security group"] 
}
