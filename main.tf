/**
  * # terraform-aws-codebuild
  *
  * Contains all the code that defines tf module for producing a codebuild project
  *
  * Update README doc
  *
  * `terraform-docs . --output-file README.md`
  *
  * ## Usage
  *
  * This module will produce a code build project that is expected to only execute in the context of an AWS CodePipeline
  *
  * Because of this uage model there is no need to set a cache or artifact value. These are hard coded to NO_CACHE and NO_ARTIFACTS respectively
  *
  * It is also only expected to log to a cloud watch log group, no S3 logging is configurable
  *
  * Lastly, it is expected to only have source input provided via the pipeline context so no source input configuration is made available
  *
  * ## Details
  *
  * If the buildspec file needs to be pre-processed with arguments use the source_buildspec_args variable. This will result in the source_buildspec being passed into the templatefunction with the source_buildspec_args assigned as the second argument.
  *
  * Otherwise the buildspec supplied without args is just passed through a file function and assigned to the buildspec source block
  */
  