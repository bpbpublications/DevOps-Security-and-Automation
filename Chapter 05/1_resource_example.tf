1.	resource "aws_instance" "web_server" {
2.	  count         = 3
3.	  ami           = "ami-0c55b159cbfafe1f0"
4.	  instance_type = "t2.micro"
5.	  
6.	  tags = {
7.	    Name = "web-server-${count.index}"
8.	  }
9.	}
