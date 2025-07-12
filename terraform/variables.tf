variable "vpc_id" {
  type = string
}

variable "public_subnets" {
  type = list(string)
}

variable "database_url" {
  type = string
}
