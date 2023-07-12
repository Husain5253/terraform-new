
resource "aws_ssm_parameter" "db_username" {
  name        = "/rds/database/username"
  description = "RDS Database username"
  type        = "SecureString"
  value       = var.db_username_value  
}

resource "aws_ssm_parameter" "db_password" {
  name        = "rds/database/password"
  description = "Database password"
  type        = "SecureString"
  value       = var.db_password_value
}

resource "aws_dms_endpoint" "dms_endpoint" {
  database_name               = var.database_name
  endpoint_id                 = var.endpoint_id
  endpoint_type               = var.endpoint_type
  engine_name                 = var.engine_name
  username                    = aws_ssm_parameter.db_username.value
  password                    = aws_ssm_parameter.db_password.value
  port                        = var.port
  server_name                 = var.server_name
  ssl_mode                    = "none"
}
