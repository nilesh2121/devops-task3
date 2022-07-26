# added the ec2 instance details 
resource "aws_instance" "webserver" {
    ami = "ami-08d4ac5b634553e16"
    instance_type = "t2.micro"
    key_name = "terrakey"
    subnet_id = data.aws_subnet.public-subnet.id
    associate_public_ip_address = true
    vpc_security_group_ids = [aws_security_group.websg.id]
    tags = {
      Name = "web-server"
    }

    #IP of aws instance copied to a file ip.txt in local system

    user_data = file("script/user.sh")

    connection {
      type        = "ssh"
      host        = aws_instance.webserver.private_ip
      user        = "devops"
      private_key = "/home/devops/.ssh/id_rsa"
      timeout     = "4m"
    }
    
    provisioner "local-exec" {
      command = "sudo ssh-copy-id -i /home/devops/.ssh/id_rsa.pub -o StrictHostKeyChecking=no ${aws_instance.webserver.private_ip}"

        
        


    }

    # provisioner "file" {
    #   source = "/var/lib/jenkins/workspace/devops_task1/"
    #   destination = "/home/ubuntu/"

    #   connection {
    #     type = "ssh"
    #     user = "ubuntu"
    #     private_key = tls_private_key.rsa.private_key_pem
    #     host = aws_instance.webserver.public_ip
        
    #   }
      
    # }



    # provisioner "remote-exec" {
    #   inline = ["echo 'Wait until SSH is ready'"]

    #   connection {
    #     type = "ssh"
    #     user = "ubuntu"
    #     private_key = tls_private_key.rsa.private_key_pem
    #     host = aws_instance.webserver.public_ip
 
    #   }
      
          
    # }

    # provisioner "local-exec" {
    #   command = "ansible-playbook -i ${aws_instance.webserver.public_ip}, --private-key ${tls_private_key.rsa.private_key_pem} apache.yml"
      
    #   connection {
    #     type = "ssh"
    #     user = "ubuntu"
    #     private_key = tls_private_key.rsa.private_key_pem
    #     host = aws_instance.webserver.public_ip
    #   }



    #   }

    
  }


  













resource "aws_instance" "dbserver" {
    ami = "ami-08d4ac5b634553e16"
    instance_type = "t2.micro"
    key_name = "terrakey"
    subnet_id = aws_subnet.private_subnet.id
    vpc_security_group_ids = [aws_security_group.dbsg.id]
    tags = {
      Name = "db-server"
    }
    user_data = file("script/user.sh")
    


}


# resource "local_file" "ssh" {
#   content = "sshcopy"
#   filename = "/home/devops/.ssh/id_rsa.pub"

  
# }



# added the keypaire location - production

# resource "aws_key_pair" "terrakey" {
#     key_name = "terrakey"
#     public_key = file("/home/ubuntu/.ssh/id_rsa.pub")
    
# }


# added the keypaire location -- staging 

# resource "aws_key_pair" "mylaptop-us" {
#     key_name = "mylaptop-us"
#     public_key = file("~/.ssh/id_rsa.pub")
# }





# Method two for

# resource "aws_key_pair" "keypair" {
#     key_name = "keypair"
#     public_key = tls_private_key.rsa.public_key_openssh

# }

# resource "tls_private_key" "rsa" {
#   algorithm = "RSA"
#   rsa_bits = 4096
  
# }

# resource "local_file" "keypair" {
#   content = tls_private_key.rsa.private_key_pem
#   filename = "tfkey"
  
# }
