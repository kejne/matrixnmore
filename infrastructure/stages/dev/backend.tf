terraform {
  cloud {

    organization = "fehlhaberse"
    hostname     = "app.terraform.io"
    workspaces {
      name = "fehlhaberse"
    }
  }
}
