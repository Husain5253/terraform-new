variable "allocated_storage" {}

variable "engine_version" {}

variable "multi_az" {}

variable "replication_instance_class" {}

variable "replication_instance_id" {}

variable "publicly_accessible" {}

variable "subnet_ids" {
  type    = list(string)
  default = data.aws_vpc.vpc_id.subnets[*].id
}
