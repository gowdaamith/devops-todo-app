variable "key_name" {
  description = "Name of the AWS Key Pair"
  type        = string
}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "ami_id" {
  description = "Ubuntu 22.04 AMI ID in your region"
  default     = "ami-02d26659fd82cf299" # Replace with actual AMI
}
