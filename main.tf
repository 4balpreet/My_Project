provider "aws" {
  region = "us-east-1"
}


resource "aws_instance" "web" {
  ami = "ami-02f3f602d23f1659d"
  instance_type = var.instance_type
  count = length(var.instance_names)

tags = {
  Name  = var.instance_names[count.index]
}

}
