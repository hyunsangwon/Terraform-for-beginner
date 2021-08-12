locals{
    group_name = var.iam_group_name[1]
    user_name = var.iam_user_name["WA"]
    user_key = var.iam_user_key["hyunsangwon"]
    policy_name = var.iam_policy_name[0]
    assignment_name = var.iam_membership_name
    attachment_name = var.iam_attachment_name
}

resource "aws_iam_group" "developers" {
    name = "${local.group_name}"
}

resource "aws_iam_user" "WA-hyunsangwon" {
    name = "${local.user_name}"

}

## 키 설정
resource "aws_iam_user_login_profile" "example" {
    user    = aws_iam_user.WA-hyunsangwon.name
    pgp_key = "keybase:${local.user_key}" 
}

## Assign users to group
resource "aws_iam_group_membership" "assignment"{
    name = "${local.assignment_name}"
    users = [
        aws_iam_user.WA-hyunsangwon.name
    ]
    group = aws_iam_group.developers.name
}

## Attach policy to the group
resource "aws_iam_policy_attachment" "attachment" {
    name = "${local.attachment_name}"
    groups = [aws_iam_group.developers.name]
    policy_arn = "${local.policy_name}"
}