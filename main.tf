resource "null_resource" "example" {
}

resource "aws_ssm_parameter" "foo" {
    value = "foobar"
    overwrite = true
    name = "/test/foobar"
    type = "String"
}