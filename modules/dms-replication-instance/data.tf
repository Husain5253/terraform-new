data "aws_vpc" "vpc_id" {
  id = ""
  filter {
    name   = "tag:Type"
    values = ["private"]
  }
}
