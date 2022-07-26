output "webserver" {
    value = aws_instance.webserver.private_ip
  
}


output "dbserver" {
    value = aws_instance.dbserver.private_ip
  
}

output "webserver_url" {
    value = aws_instance.webserver.public_ip
  
}