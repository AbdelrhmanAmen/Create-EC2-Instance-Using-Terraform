resource "aws_instance" "ec2-instance" {

        ami = "ami-06b6c7fea532f597e"
        instance_type = "t2.micro"
        tags = {
            "Name" = "instance1-abdelrhman"
        }

    }

resource  "aws_eip" "my-elastic-ip" {

        vpc = true
    
    }

resource "aws_eip_association" "association" {

        instance_id=aws_instance.ec2-instance.id
        allocation_id=aws_eip.my-elastic-ip.id

    }