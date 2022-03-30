terraform {
  backend "s3" {
    bucket = "test-my-bucket28"   
    key    = "aviral.tfstate"  
    region = "us-east-1"
    profile = "default"
   # ami = "ami-0c02fb55956c7d316"
  }
}