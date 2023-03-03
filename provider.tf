resource "aws_instance" "my-ec2-instance" {
    ami = "ami-06b6c7fea532f597e"
    instance_type = "t2.micro"
    tags = {
        "Name" = "instance-abdelrhman"
    }
}

resource  "aws_eip" "my-eip"{
    vpc = true
}

resource "aws_eip_association" "associate"{
    instance_id=aws_instance.my-ec2-instance.id
    allocation_id=aws_eip.my-eip.id

}


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