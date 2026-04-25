provider "aws" {
  region = "ap-southeast-1"

  default_tags {
    tags = {
      ManagedBy = "terraform"
      Repo      = "meridian-logistics-demo/apac-digital-infra"
    }
  }
}
