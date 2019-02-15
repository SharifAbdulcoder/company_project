resource "aws_instance" "magic8" {
  ami                         = "ami-032509850cf9ee54e"
  instance_type               = "t2.micro"
  key_name                    = "magic8ball"
  user_data                   = "${file("script.sh")}"
  associate_public_ip_address = "true"

  # subnet_id                   = "${aws_subnet.magic8ball.id}"
  # vpc_security_group_ids      = ["${aws_security_group.magic8ball.id}"]

  provisioner "file" {
    source      = "script.sh"
    destination = "/tmp/script.sh"

    connection {
      user        = "ec2-user"
      private_key = "${file("/Users/abdugofir/.ssh/id_rsa")}"
    }
  }
  provisioner "remote-exec" {
    connection {
      user        = "ec2-user"
      private_key = "${file("/Users/abdugofir/.ssh/id_rsa")}"
    }

    inline = [
      "chmod +x /tmp/script.sh",
      "sh /tmp/script.sh",
    ]
  }
}
