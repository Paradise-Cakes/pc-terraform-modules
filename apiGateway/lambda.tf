resource "aws_lambda_permission" "allow_api_gateway_handler" {
  action        = "lambda:InvokeFunction"
  function_name = var.app_arn
  principal     = "apigateway.amazonaws.com"
  source_arn    = "${aws_api_gateway_rest_api.rest_api.execution_arn}/*"
}

resource "aws_lambda_permission" "authorizer_invoke_permission" {
  statement_id  = "AllowAPIGatewayToInvokeAuthorizer"
  action        = "lambda:InvokeFunction"
  function_name = var.authorizer_name
  principal     = "apigateway.amazonaws.com"

  source_arn = "${aws_api_gateway_rest_api.rest_api.execution_arn}/*/*"
}
