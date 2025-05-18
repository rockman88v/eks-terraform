terraform {
  source = "../../../terraform/modules/tf-backend"  
}

inputs = {
  environment = "818600128395-dev"
  region      = "ap-southeast-1"
}
