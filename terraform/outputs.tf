output "ecr_repo_url" {
  value = aws_ecr_repository.medusa.repository_url
}

output "ecs_cluster_name" {
  value = aws_ecs_cluster.medusa_cluster.name
}

output "ecs_service_name" {
  value = aws_ecs_service.medusa_service.name
}
