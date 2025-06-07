resource "aws_api_gateway_rest_api" "syntro_gateway" {
  name        = "syntro-gateway"
  description = "Essa é a API Gateway da Syntro utilizada para fazer uma intregação com HelpDesk do Pipefy"

  endpoint_configuration {
    types = ["REGIONAL"]
  }
}

resource "aws_api_gateway_resource" "bucket" {
  rest_api_id = aws_api_gateway_rest_api.syntro_gateway.id
  parent_id   = aws_api_gateway_rest_api.syntro_gateway.root_resource_id
  path_part   = "{bucket}"
}

resource "aws_api_gateway_resource" "filename" {
  rest_api_id = aws_api_gateway_rest_api.syntro_gateway.id
  parent_id   = aws_api_gateway_resource.bucket.id
  path_part   = "{filename}"
}


resource "aws_api_gateway_method" "put_method" {
  rest_api_id   = aws_api_gateway_rest_api.syntro_gateway.id
  resource_id   = aws_api_gateway_resource.filename.id
  http_method   = "PUT"
  authorization = "NONE"

  request_parameters = {
    "method.request.path.bucket" = true
    "method.request.path.filename" = true
  }

}

resource "aws_api_gateway_integration" "intregracao_s3" {
  rest_api_id = aws_api_gateway_rest_api.syntro_gateway.id
  resource_id = aws_api_gateway_resource.filename.id
  http_method = aws_api_gateway_method.put_method.http_method

  integration_http_method = "PUT"
  type                    = "AWS"
  uri                     = "arn:aws:apigateway:us-east-1:s3:path/{bucket}/{filename}"  
  passthrough_behavior    = "WHEN_NO_MATCH"
  credentials = "arn:aws:iam::600852671443:role/LabRole"

  request_parameters = {
    "integration.request.path.bucket"   = "method.request.path.bucket"
    "integration.request.path.filename" = "method.request.path.filename"
  }
}

resource "aws_api_gateway_deployment" "deployment" {
  depends_on = [aws_api_gateway_integration.intregracao_s3]

  rest_api_id = aws_api_gateway_rest_api.syntro_gateway.id
  stage_name  = "prod"
}

output "api_gateway_url" {
  value = "https://${aws_api_gateway_rest_api.syntro_gateway.id}.execute-api.us-east-1.amazonaws.com/prod/{bucket}/{filename}"
}

