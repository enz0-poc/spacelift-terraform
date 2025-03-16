provider "http" {}

# Fetch the Instance ID from the IMDS
data "http" "instance_id" {
  url = "http://169.254.169.254/latest/meta-data/instance-id"
}

# Fetch IAM Role information from the IMDS
data "http" "iam_role" {
  url = "http://169.254.169.254/latest/meta-data/iam/info"
}

# Fetch the Instance Identity Document (provides instance identity data like region)
data "http" "instance_identity" {
  url = "http://169.254.169.254/latest/dynamic/instance-identity/document"
}

# Output the fetched values
output "instance_id" {
  value = data.http.instance_id.body
}

output "iam_role_info" {
  value = data.http.iam_role.body
}

output "instance_identity" {
  value = data.http.instance_identity.body
}
