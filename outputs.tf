# Output the instance public IP
output "instance_public_ip" {
  description = "Public IP of the Flask app"
  value       = aws_instance.flask_app.public_ip
}

