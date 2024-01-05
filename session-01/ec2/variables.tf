# variable "sg-name" {
#   type = string
#   default = "roboshop-all-aws"
# }

# variable "sg-description" {
#   type = string
#   default = "Allow TLS inbound traffic"
# }

# variable "inbound-from-port" {
#   #type = string
#   default = 0
# }

# variable "cidr_blocks" {
#   type = list
#   default = ["0.0.0.0/0"]
# }

variable "sg-name" {
    type = string   # No need to give type=string,number etc. It's for user understanding.
    default = "TerraformSG"
}
variable "sg-description" {
    type = string
    default = "Allow TLS inbound traffic"
}
variable "from-port" {
    type = number
    default = 0
}
variable "cidr_range" {
    type = list
    default = ["0.0.0.0/0"]
}

 