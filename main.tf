resource "aws_ecr_repository" "go-gin" {
  name = "go-gin"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}