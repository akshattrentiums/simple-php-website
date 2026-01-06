resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-key"
  public_key = file("C:/Users/AKSHAT/.ssh/terraform-key.pub")
}
