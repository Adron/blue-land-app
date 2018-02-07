resource "aws_ecr_repository" "blue_land_repo" {
  name = "blue_land"
}

resource "aws_ecs_cluster" "blue_land_cluster" {
  name = "blue_land"
}
