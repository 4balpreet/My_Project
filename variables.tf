variable "instance_names" {
  description = "Create Instances with these names"
  type        = list(string)
  default     = ["Bot1", "Bot2"]
}

variable "instance_type" {

  default = "t2.micro"

}
