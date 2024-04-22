#exer-1

# resource "aws_s3_bucket" "da7-ctw03646" {
#   bucket = "${var.project_name}-${var.identifier}"
# }

# exer-2

# resource "aws_s3_object" "name" {
#   bucket = var.storage_S3
#   for_each = fileset("/home/ctw03646/data_academy/DataAcademyRep/infrastructure/samples", "*.*")
#   key ="CTW03646/${each.value}"
#   source = "/home/ctw03646/data_academy/DataAcademyRep/infrastructure/samples/${each.value}"
# }

# exer-3

resource "aws_lambda_function" "example" {
  source_code_hash = data.archive_file.python_lambda_package.output_base64sha256
  role             = aws_iam_role.lambda_role.arn
  function_name    = "function_py"
  filename         = "function.zip"
  runtime          = "python3.11"
  handler          = "function.lambda_handler"
  timeout          = 180
  memory_size      = 250

  ephemeral_storage {
    size = 2048
  }
}

data "archive_file" "python_lambda_package" {
  type        = "zip"
  source_file = "/home/ctw03646/data_academy/DataAcademyRep/infrastructure/code/function.py"
  output_path = "function.zip"
}

resource "aws_s3_bucket" "your_bucket" {
  bucket = "${var.project_name}-${var.identifier}"
}