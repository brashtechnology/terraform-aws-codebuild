variable "name" {
  description = "the name of the codebuild project"
  type        = string
  nullable    = false
}

variable "description" {
  description = "the description of the codebuild project"
  type        = string
  nullable    = true
}

variable "service_role" {
  description = "the ARN of the IAM service role used by the codebuild project"
  type        = string
  nullable    = false
}

variable "build_timeout" {
  description = "the timeout of the build, expressed in seconds"
  type        = number
  nullable    = false
  default     = 5
}

variable "environment_compute_type" {
  type     = string
  nullable = false
}

variable "environment_image" {
  type     = string
  nullable = false
}

variable "environment_type" {
  type     = string
  nullable = false
}

variable "cloudwatch_log_group" {
  type     = string
  nullable = false
}

variable "cloudwatch_stream_name" {
  type     = string
  nullable = false
}

variable "source_buildspec_location" {
  type     = string
  nullable = false
}

variable "source_buildspec_args" {
  type    = map(string)
  default = {}
}

variable "use_templatefile" {
  type    = bool
  default = false
}
