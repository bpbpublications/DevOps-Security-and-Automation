resource "aws_instance" "web" {
  # ... other configurations
  
  tags = {
    Environment     = "Production"
    SecurityLevel   = "High"
    DataClass       = "Confidential"
    Owner           = "Platform-Team"
  }
}
