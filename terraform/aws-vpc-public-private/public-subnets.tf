resource "aws_subnet" "public" {
  # count = length(local.public_subnets)

  # vpc_id                  = aws_vpc.main.id
  # cidr_block              = local.public_subnets[count.index]
  # availability_zone       = local.azs[count.index]
  # map_public_ip_on_launch = true

  # tags = {
  #   "Name"                           = "${local.env}-public-${local.azs[count.index]}"
  #   "kubernetes.io/role/elb"         = "1"
  #   "kubernetes.io/cluster/dev-demo" = "owned"
  # }
  for_each = local.public_subnets

  vpc_id            = aws_vpc.main.id
  cidr_block        = each.value.cidr
  availability_zone = each.value.az

  tags = {
    "Name"                            = "${local.env}-public-${each.value.az}"
    "kubernetes.io/role/internal-elb" = "1"
    "kubernetes.io/cluster/dev-demo"  = "owned"
  }
}

