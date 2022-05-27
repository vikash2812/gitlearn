resource "aws_vpc" "myvpc" {
  cidr_block = var.network_cidr
  tags = {
    Name = "from-TerraForm"
    mykey ="myvalue"
    yourkey = "yourvalue"
    name = "from terraform only"
  }
}

resource "aws_subnet" "web1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr[0]
 tags = {
   Name = "web1-tf"
 }
 availability_zone = var.az-a
}


resource "aws_subnet" "web2" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr[1]
 tags = {
   Name = "web2-tf"
 }
 availability_zone = var.az-b
} 


resource "aws_subnet" "db1" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr[2]
 tags = {
   Name = "db1-tf"
 }
 availability_zone = var.az-a
}


resource "aws_subnet" "db2" {
  vpc_id = aws_vpc.myvpc.id
  cidr_block = var.subnet_cidr[3]
 tags = {
   Name = "db2-tf"
 }
 availability_zone = var.az-b
} 