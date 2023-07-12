resource "aws_dms_replication_instance" "pgflx_replication_instance" {
  allocated_storage            = var.allocated_storage
  apply_immediately            = true
  auto_minor_version_upgrade   = true
  engine_version               = var.engine_version
  multi_az                     = var.multi_az
  preferred_maintenance_window = "sun:10:30-sun:14:30"
  publicly_accessible          = var.publicly_accessible
  replication_instance_class   = var.replication_instance_class
  replication_instance_id      = var.replication_instance_id
  replication_subnet_group_id  = var.subnet_ids
}
