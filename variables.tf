variable "ami_image_id" {
  type = string
  default = "ami-0ad21ae1d0696ad58"
}

variable "availability_zone_names" {
  type    = list(string)
  default = ["ap-south-1a"]
}

variable "key_pair" {
  type = string
  default = "personal_key"
}

variable "cidr_block" {
  type = string
  default = "10.0.0.0/16"
}

variable "subnet_cidr_block" {
  type = string
  default = "10.0.1.0/24"
}
