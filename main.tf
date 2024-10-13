## Step 1 : Create an Secret Manager Meta data
resource "aws_secretsmanager_secret" "secretmanager" {
  name = "shsecretmanager"
  description = "infra secret manager meta data"
}



resource "aws_secretsmanager_secret_version" "secretversion" {
  secret_id     = aws_secretsmanager_secret.secretmanager.id
  secret_string = jsonencode(var.sampledata)
}

