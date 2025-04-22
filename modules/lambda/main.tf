
resource "aws_sns_topic" "mensagem_trusted" {
    name_prefix = "askyu-nf-message-trusted"
}

resource "aws_sns_topic_subscription" "mensagem_trusted" {
    topic_arn = aws_sns_topic.mensagem_trusted.arn
    protocol = "email"
    endpoint = "kayky.pedroso@sptech.school"
}

data "archive_file" "lambda_mensagem_trusted" {
    type = "zip"
    source_file = "${path.module}/src/lam_mensagem_trusted.py"
    output_path = "lam_mensagem_trusted.zip"
}

data "aws_iam_role" "lab_role" {
  name = "LabRole"
}

resource "aws_lambda_function" "mensagem_trusted" {
    filename = "lam_mensagem_trusted.zip"
    function_name = "fun_mensagem_trusted"
    role = data.aws_iam_role.lab_role.arn

    source_code_hash = data.archive_file.lambda_mensagem_trusted.output_base64sha256
    
    runtime = "python3.11"
    handler = "lam_mensagem_trusted.handler"

    layers = [
      "arn:aws:lambda:us-east-1:336392948345:layer:AWSSDKPandas-Python311:1"
    ]

    environment {
    variables = {
      SNS_TOPIC = aws_sns_topic.mensagem_trusted.arn
    }
  }
}

resource "aws_lambda_permission" "allow_s3_invoke" {
  statement_id  = "AllowExecutionFromS3"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.mensagem_trusted.function_name
  principal     = "s3.amazonaws.com"
  source_arn    = "arn:aws:s3:::${var.nome_bucket_trusted}"
}

resource "aws_s3_bucket_notification" "lambda_trigger" {
  bucket = var.nome_bucket_trusted

  lambda_function {
    lambda_function_arn = aws_lambda_function.mensagem_trusted.arn
    events              = ["s3:ObjectCreated:*"]
    filter_suffix       = ".csv"
  }

  depends_on = [aws_lambda_permission.allow_s3_invoke]
}

