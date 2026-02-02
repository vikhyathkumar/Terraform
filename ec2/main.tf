locals {
  insami="ami-019715e0d74f695be"
}
resource "aws_instance" "terra" {
    ami=local.insami
    instance_type = var.instance_type
    
    tags = {
        Name = "terr"

    }
}

