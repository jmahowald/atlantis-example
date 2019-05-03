resource "null_resource" "example" {
}

resource "aws_ssm_parameter" "foo" {
    value = "dummyvalue"
    overwrite = true
    name = "/test/foobar"
    type = "String"
}


resource "aws_ssm_parameter" "bar" {
    value = "dummyvalue"
    overwrite = true
    name = "/test/foo"
    type = "String"
}
output "fooval" {
    value = "${aws_ssm_parameter.foo.value}"
}