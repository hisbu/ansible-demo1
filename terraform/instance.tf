# resource "aws_instance" "server-ubuntu" {
#   ami                     = var.AWS_AMIS[var.AWS_REGION]
#   instance_type           = var.AWS_INSTANCE_TYPE
#   vpc_security_group_ids  = ["sg_vm_http","sg_vm_ssh"]
#   key_name                = "jcde-key"
#   tags = {
#     Name = "server-ubuntu-1"
#   }
# }

resource "aws_instance" "server-ubuntu-2" {
  ami                     = var.AWS_AMIS[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0b7bb20f90aa0c30f","sg-0634805f2592b1a8d"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-ubuntu-2"
  }
}

resource "aws_instance" "server-redhat" {
  ami                     = "ami-0f86a70488991335e"
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0b7bb20f90aa0c30f","sg-0634805f2592b1a8d"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-redhat"
  }
}

# resource "aws_instance" "server-awslinux" {
#   ami                     = var.AWS_AMIS_AWSLINUX[var.AWS_REGION]
#   instance_type           = var.AWS_INSTANCE_TYPE
#   vpc_security_group_ids  = ["sg_vm_http","sg_vm_ssh"]
#   key_name                = "jcde-key"
#   tags = {
#     Name = "server-awslinux-1"
#   }
# }


resource "aws_instance" "server-awslinux-2" {
  ami                     = var.AWS_AMIS_AWSLINUX[var.AWS_REGION]
  instance_type           = var.AWS_INSTANCE_TYPE
  vpc_security_group_ids  = ["sg-0b7bb20f90aa0c30f","sg-0634805f2592b1a8d"]
  key_name                = "jcde-key"
  tags = {
    Name = "server-awslinux-2"
  }
}

output "ip-ubuntu" {
  # value = [aws_instance.server-ubuntu.public_ip, aws_instance.server-ubuntu-2.public_ip]
  value = [aws_instance.server-ubuntu-2.public_ip]
}

output "ip_awslinux" {
  # value = [aws_instance.server-awslinux.public_ip, aws_instance.server-awslinux-2.public_ip]
  value = [aws_instance.server-awslinux-2.public_ip]
}

