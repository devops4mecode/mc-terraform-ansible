resource "null_resource" "webConf" {

triggers = {
 mykey = timestamp()
 }

provisioner "local-exec" {
 command = "echo [web] > inventory"
 }

provisioner "local-exec" {
 command = "echo ${aws_instance.web.public_ip} ansible_user=ubuntu ansible_ssh_private_key_file=${var.privateKeyLocation} >> inventory"
 }

provisioner "local-exec" {
#  command = "ansible-navigator run web.yml -i inventory - ee false - mode stdout"
   command = "sleep 120; ANSIBLE_HOST_KEY_CHECKING=False ansible-playbook --private-key ${var.privateKeyLocation} -i inventory web.yaml"
 }

provisioner "local-exec" {
 command = "curl http://${aws_instance.web.public_ip}"
 }
}