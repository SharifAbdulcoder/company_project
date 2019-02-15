provider "aws" {
  access_key = "${var.access_keys}"
  secret_key = "${var.secret_key}"
  region     = "${var.region}"
}
