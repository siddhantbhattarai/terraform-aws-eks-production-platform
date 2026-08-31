resource "aws_ecr_repository" "frontend" {
  name                 = "${var.name_prefix}/frontend"
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration { scan_on_push = true }
  tags = var.tags
}

resource "aws_ecr_repository" "flask_api" {
  name                 = "${var.name_prefix}/flask-api"
  image_tag_mutability = "IMMUTABLE"
  image_scanning_configuration { scan_on_push = true }
  tags = var.tags
}
