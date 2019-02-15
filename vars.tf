variable "region" {
  default = "us-west-2"
}

variable "access_keys" {
  default = "AKIAJ34HVK2C42WIEPXA"
}

variable "secret_key" {
  default = "G1BJHHQs6jw/xQ3G31jyP8/daQSQ2ZGoV8EhPXaC"
}

variable "pem_key" {
  default = "${file('/Users/abdugofir/.ssh/id_rsa.pub')}"
}

# variable "subnet_id" {
#   default = "subnet-4027051a"
# }

