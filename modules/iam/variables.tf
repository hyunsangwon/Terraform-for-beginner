variable "iam_group_name" {
    type        = list
    default = ["readonly-users","developers","admin"]
}

variable "iam_user_name" {
    type        = map
    default = {
    "WA"  = "hyunsangwon_test"
    "DS" = "hyunsangwon_test"
    "ADMIN" = "hyunsangwon_test"
  }
}

variable "iam_user_key" {
    type        = map
    default = {
    "hyunsangwon"  = "hyunsangwon-key"
  }
}

variable "iam_policy_name" {
    type        = list
    default = ["arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"]
}

variable "iam_membership_name" {
    type        = string
    default = "assignment"
}

variable "iam_attachment_name" {
    type        = string
    default = "attachment"
}