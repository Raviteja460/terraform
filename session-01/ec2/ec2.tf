# resource "aws_instance" "web" {
#   ami           = "ami-03265a0778a880afb" #devops-practice
#   instance_type = "t2.micro"
#   vpc_security_group_ids = [aws_security_group.sg.id] # this means list

#   tags = {
#     Name = "HelloTerraform"
#   }
# }

# resource "aws_security_group" "sg" {
#   name        = var.sg-name # this is for AWS
#   description = var.sg-description
#     #vpc_id      = aws_vpc.main.id

#   ingress {
#     description      = "Allow All ports"
#     from_port        = var.inbound-from-port # 0 means all ports
#     to_port          = 0 
#     protocol         = "tcp"
#     cidr_blocks      = var.cidr_blocks
#         #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }

#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#         #ipv6_cidr_blocks = ["::/0"]
#   }
#   tags = {
#     Name = var.sg-name
#   }
# }

resource "aws_instance" "web" {  #Sampleinstance is terraform name
  ami           = "ami-03265a0778a880afb" #devops-practice ami
  instance_type = "t2.micro"
  #vpc_security_group_ids = [aws_security_group.SampleSG.id]
  tags = {
    Name = "TerraformEc2" #Ec2 Instance name
  }
}
# resource "aws_security_group" "SampleSG" {
#   name        = var.sg-name
#   description = var.sg-description
#   #vpc_id      = aws_vpc.main.id
#   ingress {
#     description      = "TLS from VPC"
#     from_port        = var.from-port
#     to_port          = 0
#     protocol         = "tcp"
#     cidr_blocks      = var.cidr_range
#     #ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
#   }
#   egress {
#     from_port        = 0
#     to_port          = 0
#     protocol         = "-1"
#     cidr_blocks      = ["0.0.0.0/0"]
#     #ipv6_cidr_blocks = ["::/0"]
#   }
#   tags = {
#     Name = "TerraformSG"
#   }
# }

