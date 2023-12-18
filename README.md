<!-- BEGIN_TF_DOCS -->
# terraform-aws-codebuild

Contains all the code that defines tf module for producing a codebuild project

Update README doc

`terraform-docs . --output-file README.md`

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 3.69 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 3.69 |

## Resources

| Name | Type |
|------|------|
| [aws_codebuild_project.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/codebuild_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_build_timeout"></a> [build\_timeout](#input\_build\_timeout) | the timeout of the build, expressed in seconds | `number` | `5` | no |
| <a name="input_cloudwatch_log_group"></a> [cloudwatch\_log\_group](#input\_cloudwatch\_log\_group) | n/a | `string` | n/a | yes |
| <a name="input_cloudwatch_stream_name"></a> [cloudwatch\_stream\_name](#input\_cloudwatch\_stream\_name) | n/a | `string` | n/a | yes |
| <a name="input_description"></a> [description](#input\_description) | the description of the codebuild project | `string` | n/a | yes |
| <a name="input_environment_compute_type"></a> [environment\_compute\_type](#input\_environment\_compute\_type) | n/a | `string` | n/a | yes |
| <a name="input_environment_image"></a> [environment\_image](#input\_environment\_image) | n/a | `string` | n/a | yes |
| <a name="input_environment_type"></a> [environment\_type](#input\_environment\_type) | n/a | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | the name of the codebuild project | `string` | n/a | yes |
| <a name="input_service_role"></a> [service\_role](#input\_service\_role) | the ARN of the IAM service role used by the codebuild project | `string` | n/a | yes |
| <a name="input_source_buildspec_args"></a> [source\_buildspec\_args](#input\_source\_buildspec\_args) | n/a | `map(string)` | `{}` | no |
| <a name="input_source_buildspec_location"></a> [source\_buildspec\_location](#input\_source\_buildspec\_location) | n/a | `string` | n/a | yes |
| <a name="input_use_templatefile"></a> [use\_templatefile](#input\_use\_templatefile) | n/a | `bool` | `false` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_project_name"></a> [project\_name](#output\_project\_name) | n/a |
<!-- END_TF_DOCS -->