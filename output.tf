output "db-a-ssh" {
    value       = aws_instance.dba.public_dns
}
output "db-a-key" {
    value       = aws_instance.dba.key_name
}

output "db-b-ssh" {
    value       = aws_instance.dbb.public_dns
}
output "db-b-key" {
    value       = aws_instance.dba.key_name
}

output "db-c-ssh" {
    value       = aws_instance.dbc.public_dns
}
output "db-c-key" {
    value       = aws_instance.dbc.key_name
}