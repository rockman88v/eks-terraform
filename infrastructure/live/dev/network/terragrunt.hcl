terraform {
  source = "../../../terraform/modules/network"
}

remote_state {
  backend = "s3"
  config = {
    bucket         = "tf-state-818600128395-dev"
    key            = "${path_relative_to_include()}/terraform.tfstate"
    region         = "ap-southeast-1"
    dynamodb_table = "tf-lock-818600128395-dev"
    encrypt        = true
  }
}

inputs = {
  name                 = "dev"
  cidr_block           = "10.0.0.0/16"
  azs                  = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  public_subnet_cidrs  = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
  private_subnet_cidrs = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]  
  }
