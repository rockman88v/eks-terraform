module "network" {
  source = "../../../terraform/modules/network"
  
  name        = "dev"
  cidr_block  = "10.0.0.0/16"
  azs         = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
  public_subnet_cidrs  = ["10.0.0.0/20", "10.0.16.0/20", "10.0.32.0/20"]
  private_subnet_cidrs = ["10.0.128.0/20", "10.0.144.0/20", "10.0.160.0/20"]

  #enable_nat_gateway = true
  #single_nat_gateway = true  
}
