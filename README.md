# terraform-aws-codebuild

Contains all the code that defines tf module for producing a codebuild project

## manually upgrade readme

Update README doc

`terraform-docs . --output-file README.md`

## Usage

This module will produce a code build project that is expected to only execute in the context of an AWS CodePipeline

Because of this uage model there is no need to set a cache or artifact value. These are hard coded to NO\_CACHE and NO\_ARTIFACTS respectively

It is also only expected to log to a cloud watch log group, no S3 logging is configurable

Lastly, it is expected to only have source input provided via the pipeline context so no source input configuration is made available

## Details

If the buildspec file needs to be pre-processed with arguments use the source\_buildspec\_args variable. This will result in the source\_buildspec being passed into the templatefunction with the source\_buildspec\_args assigned as the second argument.

Otherwise the buildspec supplied without args is just passed through a file function and assigned to the buildspec source block

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
# terraform-aws-codebuild

Contains all the code that defines tf module for producing a codebuild project

Update README doc

`terraform-docs . --output-file README.md`

## Usage

This module will produce a code build project that is expected to only execute in the context of an AWS CodePipeline

Because of this uage model there is no need to set a cache or artifact value. These are hard coded to NO\_CACHE and NO\_ARTIFACTS respectively

It is also only expected to log to a cloud watch log group, no S3 logging is configurable

Lastly, it is expected to only have source input provided via the pipeline context so no source input configuration is made available

## Details

If the buildspec file needs to be pre-processed with arguments use the source\_buildspec\_args variable. This will result in the source\_buildspec being passed into the templatefunction with the source\_buildspec\_args assigned as the second argument.

Otherwise the buildspec supplied without args is just passed through a file function and assigned to the buildspec source block

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.69 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 5.31.0 |

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_build_timeout"></a> [build\_timeout](#input\_build\_timeout) | the timeout of the build, expressed in seconds | `number` | `5` | no |
| <a name="input_cloudwatch_log_group"></a> [cloudwatch\_log\_group](#input\_cloudwatch\_log\_group) | The log group | `string` | n/a | yes |
| <a name="input_cloudwatch_stream_name"></a> [cloudwatch\_stream\_name](#input\_cloudwatch\_stream\_name) | the specific stream within the log group | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | the description of the codebuild project | `string` | n/a | yes |
| <a name="input_environment_compute_type"></a> [environment\_compute\_type](#input\_environment\_compute\_type) | Information about the compute resources the build project will use. | `string` | n/a | yes |
| <a name="input_environment_image"></a> [environment\_image](#input\_environment\_image) | Docker image to use for this build project. Valid values are from AWS (https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-available.html), Docker Hub (https://hub.docker.com/) or AWS ECR fully qualifed | `string` | n/a | yes |
| <a name="input_environment_image_pull_credentials_type"></a> [environment\_image\_pull\_credentials\_type](#input\_environment\_image\_pull\_credentials\_type) | Type of credentials AWS CodeBuild uses to pull images in your build. Valid values: CODEBUILD, SERVICE\_ROLE | `string` | n/a | yes |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | Type of build environment to use for related builds. For additional information, see the CodeBuild User Guide (https://docs.aws.amazon.com/codebuild/latest/userguide/build-env-ref-compute-types.html) | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name of the codebuild project | `string` | n/a | yes |
| <a name="input_privileged_mode"></a> [privileged\_mode](#input\_privileged\_mode) | Whether to enable running the Docker daemon inside a Docker container. Defaults to true. | `bool` | `true` | no |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | the ARN of the IAM service role used by the codebuild project | `string` | n/a | yes |
| <a name="input_source_buildspec"></a> [source\_buildspec](#input\_source\_buildspec) | The build spec file. To have it pre-processed be sure to include source\_buildspec\_args | `string` | n/a | yes |
| <a name="input_source_buildspec_args"></a> [source\_buildspec\_args](#input\_source\_buildspec\_args) | When supplied will cause the source\_buildspec to be procssed via the templatefile function, where this variable will serve as the second argument | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
