module "tf_backend" {
  source      = "../../../terraform/modules/tf-backend"
  environment = "818600128395-dev"
  region      = "ap-southeast-1"
}
