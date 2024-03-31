variable "keyName" {
 type = string
 default = "[aws-key-name]"
}

variable "publicKeyLocation" {
 type = string
 default = "~/.ssh/id_rsa.pub" 
}

variable "privateKeyLocation" {
 type = string
 default = "~/[path]/[key.pem]"
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