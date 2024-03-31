variable "keyName" {
 type = string
 default = "tech-ubuntu-key"
}

variable "publicKeyLocation" {
 type = string
 default = "~/.ssh/id_rsa.pub" 
}

variable "privateKeyLocation" {
 type = string
 default = "~/Desktop/tech-ubuntu-key.pem"
}

variable "ami-id" {
  type = string
  default = "ami-06c4be2792f419b7b"
}

variable "instanceType" {
 type = string
 default = "t2.micro"
}

variable "instanceTagName" {
 type = string
 default = "MentorCruise-Brandon"
}

variable "sg_name" {
 type = string
 default = "web_sg"
}