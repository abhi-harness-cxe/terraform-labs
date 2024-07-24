terraform {
  backend "s3" {
    bucket = "s3tftstemigrate"
    key    = "s3tstate/backend.tfstate"
    region = "ap-south-1"
  }
}
