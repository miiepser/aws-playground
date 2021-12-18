variable "clusterName" {
  type        = string
  default     = "changeit"
  description = "The configurable Cluster name"
}

variable "region" {
  type    = string
  default = "eu-central-1"
}

variable "logRetentionTime" {
  type    = number
  default = 1
}

variable "cidr_block" {
  type        = string
  description = "CIDR range for eks net"
  default     = "changeme"
}


variable "zones" {
  #type        = map(string, object({cidr_block=string, tags=map(any)}))
  type        = map(any)
  description = "Map of the configuration of all used subnets"
  default     = {}
}
