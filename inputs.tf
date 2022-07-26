# set a region
variable "region" {
    type = string
    default = "us-east-1"
  
}
# network cidr range
# variable "network_cidrs" {
#     type = string
#     default = "10.0.0.0/16"
  
# }
# availability zone 1a
# variable "subnet_azs_1a" {
#     type = string
#     default = "us-east-1a"
  
# }

# availability zone 1b
variable "subnet_azs_1b" {
    type = string
    default = "us-east-1b"
  
}


# subnet name tag for web
variable "subnet_name_tags_web" {
    type = string
    default = "web"
  
}

# subnet name tag for db
variable "subnet_name_tags_db" {
    type = string
    default = "db" 
  
}

# subnet cidr range for public
# variable "subnet_cidrs_public" {
#     type = string
#     default = "10.0.0.0/24"
  
# }

# subnet cidr range for private

variable "subnet_cidrs_private" {
    type = string
    default = "10.0.1.0/24"
  
}

# added the keypath location

# variable "public_key" {
#     type = string
#     default = file("/home/ubuntu/Key/.ssh/id_rsa.pub")
  
# }

# variable "priv_key" {
#     type = string
#     default = "/home/ubuntu/.ssh/id_rsa"
  
# }


# variable "pub_key" {
#     type = string
#     default = "/home/ubuntu/.ssh/id_rsa.pub"
  
# }

# variable "username" {
#     type = string
#     default = "devops"

  
# }

# variable "password" {
#     type = string
#     default = "nasa@123"

  
# }




