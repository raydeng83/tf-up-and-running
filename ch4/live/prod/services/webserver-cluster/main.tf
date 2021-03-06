provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  # source = "../../../modules/services/webserver-cluster"
  source = "github.com/raydeng83/tf-modules//services/webserver-cluster?ref=v0.0.6"

  cluster_name           = var.cluster_name
  db_remote_state_bucket = var.db_remote_state_bucket
  db_remote_state_key    = var.db_remote_state_key

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}
