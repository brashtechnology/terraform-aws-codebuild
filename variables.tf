variable "name" {
  description = "the name of the codebuild project"
  type        = string
}

variable "description" {
  description = "the description of the codebuild project"
  type        = string
}

variable "service_role" {
  description = "the ARN of the IAM service role used by the codebuild project"
  type        = string
}

variable "build_timeout" {
  description = "the timeout of the build, expressed in seconds"
  type        = number
  default     = 5
}

variable "environment_compute_type" {
  description = "Information about the compute resources the build project will use."
  type        = string

  validation {
    condition     = contains(["BUILD_GENERAL1_SMALL", "BUILD_GENERAL1_MEDIUM", "BUILD_GENERAL1_LARGE", "BUILD_GENERAL1_2XLARGE", "BUILD_GENERAL1_SMALL"], var.environment_compute_type)
    error_message = "Valid values for environment_compute_type: (BUILD_GENERAL1_SMALL, BUILD_GENERAL1_MEDIUM, BUILD_GENERAL1_LARGE, BUILD_GENERAL1_2XLARGE, BUILD_GENERAL1_SMALL)."
  }
}

variable "environment_image" {
  description = "Docker image to use for this build project. Valid values are from AWS (https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html), Docker Hub (https://hub.docker.com/) or AWS ECR fully qualifed"
  type        = string
}

variable "environment_type" {
  description = "Type of build environment to use for related builds. For additional information, see the CodeBuild User Guide (https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html)"
  type        = string

  validation {
    condition     = contains(["LINUX_CONTAINER", "LINUX_GPU_CONTAINER", "WINDOWS_CONTAINER", "WINDOWS_SERVER_2019_CONTAINER", "ARM_CONTAINER"], var.environment_type)
    error_message = "Valid values for environment_type: (LINUX_CONTAINER, LINUX_GPU_CONTAINER, WINDOWS_CONTAINER, WINDOWS_SERVER_2019_CONTAINER, ARM_CONTAINER)."
  }
}

variable "environment_image_pull_credentials_type" {
  description = "Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE_ROLE"
  type        = string

  validation {
    condition     = contains(["CODEBUILD", "SERVICE_ROLE"], var.environment_image_pull_credentials_type)
    error_message = "Valid values for environment_image_pull_credentials_type: (CODEBUILD, SERVICE_ROLE)."
  }
}

variable "privileged_mode" {
  description = "Whether to enable running the Docker daemon inside a Docker container. Defaults to true."
  type        = bool
  default     = true
}

variable "cloudwatch_log_group" {
  description = "The log group"
  type     = string
}

variable "cloudwatch_stream_name" {
  description = "the specific stream within the log group"
  type     = string
}

variable "source_buildspec" {
  description = "The build spec file. To have it pre-processed be sure to include source_buildspec_args"
  type     = string
}

variable "source_buildspec_args" {
  description = "When supplied will cause the source_buildspec to be procssed via the templatefile function, where this variable will serve as the second argument"
  type    = map(string)
  default = {}
}
