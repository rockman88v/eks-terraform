module "network" {
  source              = "../../modules/network"
  cidr_block          = var.cidr_block
  azs                 = var.azs
  private_subnet_cidrs = var.private_subnet_cidrs
  public_subnet_cidrs  = var.public_subnet_cidrs
}
