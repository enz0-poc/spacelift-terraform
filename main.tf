provider "http" {}

data "http" "example" {
  url = "https://www.google.com"
}

output "google_response" {
  value = data.http.example.body
}
