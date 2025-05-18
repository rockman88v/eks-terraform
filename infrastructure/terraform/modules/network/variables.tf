variable "name" {
  description = "Tên prefix cho resource"
  type        = string
}

variable "cidr_block" {
  description = "CIDR block của VPC"
  type        = string
}

variable "azs" {
  description = "Availability Zones"
  type        = list(string)
}

variable "public_subnet_cidrs" {
  description = "CIDR của các public subnet"
  type        = list(string)
}

variable "private_subnet_cidrs" {
  description = "CIDR của các private subnet"
  type        = list(string)
}
