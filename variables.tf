variable "glue_job_name" {
  default     = "insearch-glue-job"
  description = "Glue job name"
}

variable "glue_job_role_arn" {
  default     = ""
  description = "role arn for the glue job"
}

variable "s3_location" {
  default     = "s3://"
  description = "s3 location of python script"
}

variable "aws_region" {
  default     = "ap-south-1"
  description = "AWS region"
}

variable "aws_profile" {
  default = "default"
  type = string
}

variable "cloudwatch_log_group_name" {
  default = ""
  type = string
  description = "name of aws cloud watch group for glue job logs"
}

variable "cloudwatch_retention_days" {
  default = 1
  description = "retention period of glue job logs"
}


variable "python_version" {
  default = 3
  description = "version of python for glue job"
}



variable "glue_connection_name" {
  default = "default"
  description = "glue connection name"

}


variable "glue_connection_jdbc_url" {
  default = "jdbc://test"
  description = "glue connection jdbc url"

}


variable "glue_connection_username" {
  default = ""
  description = "glue connection username"

}

variable "glue_connection_password" {
  default = ""
  description = "glue connection password"

}


