variable "location" {
  type    = string
  default = "westeurope"
}
variable "prefix" {
  type    = string
  default = "tfc-lab"
}

variable "ssh-source-address" {
  type    = string
  default = "*"
}


#variable "client_id" {
#  type = string
#}
#
#variable "client_secret" {
#  type = string
#}
#
#variable "subscription_id" {
#  type = string
#}
#
#variable "tenant_id" {
#  type = string
#}
