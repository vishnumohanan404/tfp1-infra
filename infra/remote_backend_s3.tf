terraform {
  backend "s3" {
    bucket = "tf1-python"
    key    = "devops-project-1/terraform.tfstate"
    region = "eu-west-1"
  }
}