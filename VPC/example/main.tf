module "Ec2" {
  for_each = var.instance
  name = each.key
  name-tag = var.tag-name
  ami= each.value.ami
  instance_type=each.value.instance_type
  source="./C:/Users/glin/Desktop/assignmt/EC2"
}