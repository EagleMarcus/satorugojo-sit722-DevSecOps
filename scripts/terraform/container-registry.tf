# Your Solution
#
# Creates a container registry on AWS to publish Docker images.
#
resource "aws_ecr_repository" "microservice1" {
  name                = "${var.app_name}_microservice1"
  image_tag_mutability = "MUTABLE"  # Can be "MUTABLE" or "IMMUTABLE"
}

resource "aws_ecr_repository" "microservice2" {
  name                 = "${var.app_name}_microservice2"
  image_tag_mutability = "MUTABLE"
}
