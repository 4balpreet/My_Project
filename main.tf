provider "aws" {
  region = "us-east-1"
}


terraform {
  backend "remote" {
    hostname = "app.terraform.io"
    organization = "Balpreet"

    workspaces {
      name = "my-app-test"
    }
  }
}

resource "aws_instance" "web" {
  ami = "ami-05502a22127df2492"
  instance_type = var.instance_type
  count = length(var.instance_names)

tags = {
  Name  = var.instance_names[count.index]
}

}
