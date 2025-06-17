# project name 
variable "project_name" {
  type        = string
  default     = "aws_k3s"
}
# region 
variable "region" {
  type        = string
  default     = "ap-southeast-1"
}
# az 
variable "availability_zones" {
  type        = list(string)
  default     = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}
# node count
variable "node_count" {
  type        = number
  default     = "1"
}
# cidr blocks
variable "cidr_blocks" {
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"] 
}
