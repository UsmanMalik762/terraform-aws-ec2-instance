
data "template_file" "script" {
    template = "${file("${var.script_path != null ? "${var.script_path}" : "${path.module}/userdata.yaml"}")}"
  
}

resource "aws_instance" "ec2" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = var.sg_id
  root_block_device {
    volume_type = var.volume_type
    volume_size = var.root_volume_size
    tags = {
      Name = var.instance_tag
    }
  }
  tags = {
    Name = var.instance_tag
  }
  user_data = data.template_file.script.rendered

}




