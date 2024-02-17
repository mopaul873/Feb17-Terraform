resource "aws_lightsail_instance" "custom" {
  name              = "Momo_DevOps_Server"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>Deployed via Terraform</h1>' | sudo tee /var/www/html/index.html"
}

resource "aws_iam_group" "developers" {
  name = "Momogroup"
  
}

resource "aws_iam_user" "lb" {
  name = "Alexia_Momo"
  path = "/system/"

  
  }



