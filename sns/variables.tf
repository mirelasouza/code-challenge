variable "deliver-location-updates-topic" {
  type = string
}

variable "region" {
  type    = list(string)
  default = ["sa-east-1"]
}