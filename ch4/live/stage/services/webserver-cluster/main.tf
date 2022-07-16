provider "aws" {
  region = "us-east-2"
}

module "webserver_cluster" {
  # source = "../../../modules/services/webserver-cluster"
  source = "github.com/raydeng83/tf-modules//services/webserver-cluster?ref=v0.0.6"

  cluster_name           = "webservers-stage"
  db_remote_state_bucket = "tf-ldeng-ch4-bucket-1"
  db_remote_state_key    = "state/terraform.tfstate"

  instance_type = "t2.micro"
  min_size      = 2
  max_size      = 2
}
