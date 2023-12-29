provider "aws" {
region = "us-east-1"
profile = "default"
default_tags {
  tags = = {
    "Key" = "Value"
  }
}
}

provider "aws" {
    alias = "west"
region = "us-west-1"
profile = "default"
default_tags {
  tags = = {
    "Key" = "Value"
  }
}
}
