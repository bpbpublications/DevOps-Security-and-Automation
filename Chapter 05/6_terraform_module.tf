module "web_app" {
  source      = "./modules/web_app"
  instance_type = "t2.micro"
  ami           = "ami-0c94855ba95c574c8"
}
