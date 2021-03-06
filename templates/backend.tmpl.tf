# Control where the tfstate file for this terraform section/project is stored.
terraform {
  backend "s3" {
    profile = "${profile}"
    region  = "${region}"
    bucket  = "${bucket}-${region}-tfstate"
    key     = "${statefile}.tfstate"
  }
}