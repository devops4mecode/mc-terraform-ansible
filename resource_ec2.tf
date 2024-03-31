resource "aws_instance" "web" {
 ami = var.ami-id
 instance_type = var.instanceType
 
key_name = var.keyName

 
vpc_security_group_ids = [aws_security_group.web_sg.id]

 tags = {
 Name = var.instanceTagName
 }
}