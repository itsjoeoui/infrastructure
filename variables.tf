variable "zone_id" {
  type    = string
  default = "41e8546a161a90e6ebd3772eb4105b76"
}

variable "account_id" {
  type    = string
  default = "d71f7e6bf166ea8954ecdade9246e442"
}

variable "domain" {
  type    = string
  default = "jyu.dev"
}

variable "CLOUDFLARE_API_TOKEN" {
  sensitive = true
  type      = string
}
