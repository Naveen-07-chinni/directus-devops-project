output "instance_id" {
  value = aws_instance.this.id
}

output "instance_public_ip" {
  value = aws_instance.this.public_ip
}

output "directus_url" {
  value = "http://${aws_instance.this.public_ip}:8055"
}

output "private_key" {
  value     = tls_private_key.ssh_key.private_key_pem
  sensitive = true
}
