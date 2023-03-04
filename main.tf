terraform {

    required_providers {
        aws={
            source = "hashicorp/aws"
            version = "~>4.0"
        }
    }
    backend "s3" {
    bucket = "abdelrhman-bucket"
    key    = "state-file"
    region = "eu-west-3"
    }

}

provider "aws" {

    region = "eu-west-3"

}

module "ec2module"{
    source="./modules"
}
