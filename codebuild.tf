locals {
  buildspec = (
    length(var.source_buildspec_args) > 0
    ? templatefile(var.source_buildspec, var.source_buildspec_args)
    : file(var.source_buildspec)
  )
}

resource "aws_codebuild_project" "this" {
  name          = var.name
  description   = var.description
  service_role  = var.service_role
  build_timeout = var.build_timeout

  cache {
    modes = []
    type  = "NO_CACHE"
  }

  artifacts {
    type = "NO_ARTIFACTS"
  }

  environment {
    compute_type                = var.environment_compute_type
    image                       = var.environment_image
    type                        = var.environment_type
    image_pull_credentials_type = "CODEBUILD"
    privileged_mode             = var.privileged_mode
  }

  logs_config {
    cloudwatch_logs {
      group_name  = var.cloudwatch_log_group
      status      = "ENABLED"
      stream_name = var.cloudwatch_stream_name
    }
    s3_logs {
      encryption_disabled = false
      status              = "DISABLED"
    }
  }

  source {
    type      = "NO_SOURCE"
    buildspec = local.buildspec
  }
}
