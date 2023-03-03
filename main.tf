terraform {
    required_providers {
        aws={
            source = "hashicorp/aws"
            version = "~>4.0"
        }
    }
}

provider "aws" {
    region = "eu-west-3"

}


terraform {
    backend "s3" {
    bucket = "abdelrhman-bucket"
    key    = "tfstate"
    region = "eu-west-3"
    }
}

