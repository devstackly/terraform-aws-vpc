output "vpc-id" {
  value = aws_vpc.dev-vpc.*.id
}

output "public-subnets-id" {
  value = aws_subnet.dev-public-subnets.*.id
}

output "private-subnets-id" {
  value = aws_subnet.dev-private-subnets.*.id
}