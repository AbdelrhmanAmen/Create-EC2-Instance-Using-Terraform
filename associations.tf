resource "aws_network_interface_sg_attachment" "sg_attachment" {
    security_group_id    = aws_security_group.allow_ssh.id
    network_interface_id = aws_instance.my-ec2-instance.primary_network_interface_id
}