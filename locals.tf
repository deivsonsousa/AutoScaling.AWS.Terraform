locals {
  subnet_ids = { for k, v in aws_subnet.this : v.tags.Name => v.id }

  common_tags = {
    Project   = "Auto-Scaling AWS com Terraform"
    CreatedAt = "07-2021"
    ManagedBy = "Terraform"
    Owner     = "Deivs Sousa"
    Service   = "Auto Scaling App"
  }
}
