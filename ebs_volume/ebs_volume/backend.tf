terraform {
  backend "s3"{
     bucket="test-my-bucket28"
      key="aviral_ebs.tfstate"
      region="us-east-1"
  }
 
}

