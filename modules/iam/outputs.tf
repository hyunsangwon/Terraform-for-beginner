output "password" {
  value = aws_iam_user_login_profile.example.encrypted_password
}