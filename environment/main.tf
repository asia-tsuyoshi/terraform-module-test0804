module "modified_network" {
  source = "../modules/network"

  availability_zone = "ap-northeast-1a"
  cidr_block        = "10.0.1.0/24"
}

module "sg" {
  source = "../modules/security_group"

  vpc_id = module.modified_network.vpc_id
}




#https://zenn.dev/machamp/articles/e95900fcc21ce7