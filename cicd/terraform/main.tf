provider "aws" {
  region = "us-west-2"
}

module "vpc" {
  source       = "./modules/vpc"
  cidr_block   = "10.0.0.0/16"
  subnet_cidrs = ["10.0.1.0/24", "10.0.2.0/24"]
}

module "eks" {
  source       = "./modules/eks"
  cluster_name = "kanastra-eks-cluster"
  subnet_ids   = module.vpc.subnet_ids
}

module "iam" {
  source    = "./modules/iam"
  role_name = "eks-role"
}

output "cluster_name" {
  value = module.eks.cluster_name
}

output "cluster_endpoint" {
  value = module.eks.cluster_endpoint
}

output "cluster_certificate_authority_data" {
  value = module.eks.cluster_certificate_authority_data
}

output "iam_role_arn" {
  value = module.iam.iam_role_arn
}
