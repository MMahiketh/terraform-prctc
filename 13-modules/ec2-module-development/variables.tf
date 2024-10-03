variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
  validation {
    condition = contains(["t3.micro", "t3.small", "t2.micro", "t2.small"], var.instance_type)
    error_message = "instance_type must be 't3.micro', 't3.small', 't2.micro', 't2.small'"
  }
}

variable "sg_ids" {
  type = list(string)
  default = [ "sg-008c65bfe7870ea36" ]
}

variable "instance_name" {
  type = string
}
