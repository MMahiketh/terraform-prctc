variable "ami_id" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "sg_ids" {
  type = list(string)
  default = [ "sg-008c65bfe7870ea36" ]
}

variable "instance_name" {
  type = string
}
