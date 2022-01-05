resource "aws_cloudwatch_log_group" "insearch-infra-glue-jobs-cloudwatch-log-group" {
  name              = var.cloudwatch_log_group_name
  retention_in_days = var.cloudwatch_retention_days
}

resource "aws_glue_job" "insearch-infra-glue-jobs-provisioning" {
  name     = var.glue_job_name
  role_arn = var.glue_job_role_arn
  glue_version = "3.0"
  command {
    script_location = var.s3_location
    python_version= var.python_version
  }
  default_arguments = {
    # ... potentially other arguments ...
    "--continuous-log-logGroup"          = aws_cloudwatch_log_group.insearch-infra-glue-jobs-cloudwatch-log-group.name
    "--enable-continuous-cloudwatch-log" = "true"
    "--enable-continuous-log-filter"     = "true"
    "--enable-metrics"                   = "true"
    "--glue-version"                     =  3.0
    
  }


}


resource "aws_glue_connection" "glue_connection" {
  connection_properties = {
    JDBC_CONNECTION_URL =  var.glue_connection_jdbc_url
    PASSWORD            =  var.glue_connection_password
    USERNAME            =  var.glue_connection_username
  }

  name = var.glue_connection_name
}
