terraform {
  backend "pg" {
  }
}

provider "heroku" {
  version = "~> 3.1"
}

locals {
  app_name = "golang-sample-20201220"
}


resource "heroku_formation" "web" {
  app        = "${local.app_name}"
  type       = "web"
  quantity   = 1
  size       = "Free"
}
