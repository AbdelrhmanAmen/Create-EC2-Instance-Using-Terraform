output "eip_value" {
    description = "public IP"
    value= aws_instance.my-ec2-instance.public_ip

}

output "AZ_value" {
    description = "availability zone"
    value= aws_instance.my-ec2-instance.availability_zone

}

output "instance_type" {
    description = "instance type"
    value= aws_instance.my-ec2-instance.instance_type

}
