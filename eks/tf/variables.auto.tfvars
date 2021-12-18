clusterName = "clusterchen"
cidr_block  = "172.2.0.0/22"
zones = {
  "eu-central-1b" = {
    "cidr_block" = "172.2.0.0/24"
    tags = {
      Name     = "clusterchen-zoneb"
      aws_zone = "eu-central-1b"
    }
  }
}


