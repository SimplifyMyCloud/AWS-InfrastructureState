# Example Service Control Policy
resource "aws_organizations_policy" "restrict_regions" {
  name = "restrict-regions"
  content = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Effect = "Deny"
        Action = "*"
        Resource = "*"
        Condition = {
          StringNotEquals = {
            "aws:RequestedRegion": [
              "us-east-1",
              "us-west-2"
            ]
          }
        }
      }
    ]
  })
}

# Attach SCP to Production OU
resource "aws_organizations_policy_attachment" "restrict_regions_attachment" {
  policy_id = aws_organizations_policy.restrict_regions.id
  target_id = aws_organizations_organizational_unit.production.id
}