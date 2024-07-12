resource "aws_instance" "main" {
  ami           = var.ami_image_id
  instance_type = "t2.micro"
  key_name = var.key_pair # Insira o nome da chave criada antes.
  subnet_id = aws_subnet.main.id
  vpc_security_group_ids = [aws_security_group.permitir_ssh_http.id]
  associate_public_ip_address = true
  tags = {
    Name = "server01"
  }
}

output "ec2_global_ips" {
  value = ["${aws_instance.main.*.public_ip}"]
}
