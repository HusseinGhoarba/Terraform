variable "instances-name" {
    type = list
    default = ["public-instance","private-instance"]
}

variable "instances-type" {
    type = string
    default = "t2.micro"
}

variable "ami-id" {
    type = string
    default = "ami-00d8a762cb0c50254"
}

variable "vpc-name" {
    type = string
    default = "default-vpc-name"
}

variable "gateway-name" {
    type = string
    default = "default-gateway-name"
}

variable "subnet-name" {
    type = list
    default = ["public-subnet","private-subnet"]
}

variable "route-table-name" {
    type = list
    default = ["default-public-table","default-private-table"]
}


variable "nat-gateway-name" {
    type = string
    default = "default-nat-gateway-name"
}


variable "subnet-cidr" {
    type = list
    # default = ["10.0.0.0/24" , "10.0.1.0/24"]
}
