terraform {
  backend "s3" {
    bucket = "ceq-test-buck-tfstate"   // bucket name
    key    = "aman.tfstate"  // name of file in bucket
    region = "us-east-1"
    profile = "default"
   # ami = "ami-0c02fb55956c7d316"
  }
}