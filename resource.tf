resource "aws_instance" "myawsserver" {
  ami = var.image
  instance_type = var.hw
  tags = {
    Name = var.name
    Env = "Dev"
  }
}

resource "aws_s3_bucket" "b" {
  bucket = var.bucket-name

  tags = {
    Name        = var.bucket-name
    Environment = "Dev"
  }
}
