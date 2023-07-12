

module "pgflx_replication_instance" {

  source = "modules/dms-replication-instance"

  allocated_storage            = 100
  engine_version               = "3.5.1"
  multi_az                     = false
  replication_instance_class   = "dms.c5.xlarge"
  replication_instance_id      = "pgflx-replication-instance" 
  publicly_accessible          = true
}

module "pgflx_broadridgecm_source" {

  source = "modules/dms-endpoints"
  
  database_name      = "BroadridgeDemoCM"
  endpoint_id        = "br-icsdev-pgflx-broadridgedemocm-source"
  endpoint_type	     = "source"
  engine_name        = "Microsoft SQL Server"
  port		     = 1433
  server_name	     = "br-icsdev-pgflx-rds-mssqldb-rds.cirmbkt1eynd.us-east-1.rds.amazonaws.com"
  db_username_value  = "DBUser"
  db_password_value  = "fCEUSkJcZ4vd5EWw"
}

module "pgflx_broadridgecm_target" {

  source = "modules/dms-endpoints"

  database_name      = "BroadridgeDemoCM"
  endpoint_id        = "br-icsdev-pgflx-broadridgedemocm-target"
  endpoint_type      = "target"
  engine_name        = "Microsoft SQL Server"
  port               = 1433
  server_name        = "br-icsdev-pgflx-rds-mssqldb-rds-replica.cirmbkt1eynd.us-east-1.rds.amazonaws.com"
  db_username_value  = "DBUser"
  db_password_value  = "fCEUSkJcZ4vd5EWw"
}

module "pgflx_epwcmdb_source" {

  source = "modules/dms-endpoints"

  database_name      = "EPWCMDB"
  endpoint_id        = "br-icsdev-pgflx-epwcmdb-source"
  endpoint_type      = "source"
  engine_name        = "Microsoft SQL Server"
  port               = 1433
  server_name        = "br-icsdev-pgflx-rds-mssqldb-rds.cirmbkt1eynd.us-east-1.rds.amazonaws.com"
  db_username_value  = "DBUser"
  db_password_value  = "fCEUSkJcZ4vd5EWw"
}

module "pgflx_epwcmdb_target" {

  source = "modules/dms-endpoints"

  database_name      = "EPWCMDB"
  endpoint_id        = "br-icsdev-pgflx-epwcmdb-target"
  endpoint_type      = "target"
  engine_name        = "Microsoft SQL Server"
  port               = 1433
  server_name        = "br-icsdev-pgflx-rds-mssqldb-rds-replica.cirmbkt1eynd.us-east-1.rds.amazonaws.com"
  db_username_value  = "DBUser"
  db_password_value  = "fCEUSkJcZ4vd5EWw"
}


module "pgflx_icmacm_source" {

  source = "modules/dms-endpoints"

  database_name      = "IcmaCM"
  endpoint_id        = "br-icsdev-pgflx-icmacm-source"
  endpoint_type      = "source"
  engine_name        = "Microsoft SQL Server"
  port               = 1433
  server_name        = "br-icsdev-pgflx-rds-mssqldb-rds.cirmbkt1eynd.us-east-1.rds.amazonaws.com"
  db_username_value  = "DBUser"
  db_password_value  = "fCEUSkJcZ4vd5EWw"
}

module "pgflx_icmacm_target" {

  source = "modules/dms-endpoints"

  database_name      = "IcmaCM"
  endpoint_id        = "br-icsdev-pgflx-icmacm-target"
  endpoint_type      = "target"
  engine_name        = "Microsoft SQL Server"
  port               = 1433
  server_name        = "br-icsdev-pgflx-rds-mssqldb-rds-replica.cirmbkt1eynd.us-east-1.rds.amazonaws.com"
  db_username_value  = "DBUser"
  db_password_value  = "fCEUSkJcZ4vd5EWw"
}
