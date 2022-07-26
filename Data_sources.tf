# data "aws_internet_gateway" "hcl-igw" {
#     filter {
#         name = "tag:Name"
#         values = ["hcl-igw"]
      
#     }

  
# }
# output "aws-internet-gateway-hcl-igw_id" {
#     value = aws_internet_gateway.hcl-igw
  
# }