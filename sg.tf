# resource "aws_security_group" "magic8ball" {
#   name        = "magic8ball"
#   description = "magic8ball Security Group"
#   vpc_id      = "${aws_vpc.magic8ball.id}"
#
#   ingress {
#     from_port   = 0
#     to_port     = 65535
#     protocol    = "tcp"
#     cidr_blocks = ["0.0.0.0/0"]
#   }
#
#   egress {
#     from_port   = 0
#     to_port     = 0
#     protocol    = -1
#     cidr_blocks = ["0.0.0.0/0"]
#   }
# }

