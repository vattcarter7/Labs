locals {
  region   = "ap-southeast-1" ## Singapore
  vpc_cidr = "10.0.0.0/16"
  env      = "dev"
  public_subnets = {
    public_1 = {
      cidr = "10.0.1.0/24"
      az   = "ap-southeast-1a"
    }
    public_2 = {
      cidr = "10.0.2.0/24"
      az   = "ap-southeast-1b"
    }
  }
  private_subnets = {
    private_1 = {
      cidr = "10.0.101.0/24"
      az   = "ap-southeast-1a"
    }
    private_2 = {
      cidr = "10.0.102.0/24"
      az   = "ap-southeast-1b"
    }
  }
}