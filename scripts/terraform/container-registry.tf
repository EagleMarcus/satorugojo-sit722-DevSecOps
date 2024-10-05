# Your Solution
#
# Creates a container registry on AWS to publish Docker images.
#
resource "aws_ecr_repository" "Repository" {
  name                = "${var.app_name}"
  image_tag_mutability = "MUTABLE"  # Can be "MUTABLE" or "IMMUTABLE"
}
