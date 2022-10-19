resource "aws_iam_user" "admin" {
    count = "${length(var.useradmin)}"
    name = "${element(var.useradmin,count.index)}"
}
resource "aws_iam_user" "dev" {
    count = "${length(var.userdev)}"
    name = "${element(var.userdev,count.index)}"
}
resource "aws_iam_access_key" "newempadmin" {
    count = length(var.useradmin)
    user = element(var.useradmin,count.index)
}
resource "aws_iam_access_key" "newempdev" {
    count = length(var.userdev)
    user = element(var.userdev,count.index)
}