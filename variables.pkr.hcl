variable "aws_access_key" {
    type =  string
    default = "mypassword"
    sensitive = true
}

variable "aws_secret_key" {
  type =  string
  default = "mypassword"
  // Sensitive vars are hidden from output as of Packer v1.6.5
  sensitive = true
}