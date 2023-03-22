variable "instance_names" {
  description = "Create Instances with these names"
  type        = list(string)
  default     = ["Bot"]
}

variable "instance_type" {

  default = "t2.micro"

}
