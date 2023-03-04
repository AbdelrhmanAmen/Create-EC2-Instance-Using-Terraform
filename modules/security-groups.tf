resource "aws_security_group" "allow_ssh" {

    name        = "allow_ssh"
    ingress {
        from_port        = 22
        to_port          = 22
        protocol         = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
        from_port        = 0
        to_port          = 0
        protocol         = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
    tags = {
        Name = "allow-ssh-abdelrhman"
    }
    
    }

resource "aws_network_interface_sg_attachment" "sg_attachment" {
    security_group_id    = aws_security_group.allow_ssh.id
    network_interface_id = aws_instance.ec2-instance.primary_network_interface_id
    }