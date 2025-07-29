data "aws_secretsmanager_secret_version" "db_password" {
  secret_id = "database/password"
}

resource "aws_db_instance" "main" {
  password = data.aws_secretsmanager_secret_version.db_password.secret_string
  # other configurations...
}
