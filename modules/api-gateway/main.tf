resource "aws_apigatewayv2_api" "http_api" {
  name          = "syntro-api-gateway"
  protocol_type = "HTTP"
}

resource "aws_apigatewayv2_integration" "http_backend" {
  api_id           = aws_apigatewayv2_api.http_api.id
  integration_type = "HTTP_PROXY"
  integration_method = "POST"
  integration_uri  = var.backend_url
  payload_format_version = "1.0"
}

resource "aws_apigatewayv2_route" "post_nf_solicitacao" {
  api_id    = aws_apigatewayv2_api.http_api.id
  route_key = "POST /nf/solicitacao-servico"
  target    = "integrations/${aws_apigatewayv2_integration.http_backend.id}"
}

resource "aws_apigatewayv2_stage" "prod" {
  api_id      = aws_apigatewayv2_api.http_api.id
  name        = "prod"
  auto_deploy = true
}

output "api_gateway_url" {
  value = aws_apigatewayv2_api.http_api.api_endpoint
}