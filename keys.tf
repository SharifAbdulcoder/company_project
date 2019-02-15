resource "aws_key_pair" "magic8ball" {
  key_name   = "magic8ball"
  public_key = "${file("/Users/abdugofir/.ssh/id_rsa.pub")}"
}
