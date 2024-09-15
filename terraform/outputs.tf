# Outputs para facilitar o acesso aos IPs públicos

output "apache_server_ip" {
  description = "IP Público do servidor Apache"
  value       = aws_instance.apache_server.public_ip
}

output "nginx_server_ip" {
  description = "IP Público do servidor Nginx"
  value       = aws_instance.nginx_server.public_ip
}
