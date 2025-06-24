terraform {
  backend "s3" {
    bucket         = "nextcloud-s3-5139"   # S3 버킷 이름
    key            = "terraform/terraform.tfstate" # S3 경로 (폴더처럼 취급됨)
    region         = "ap-northeast-2"              # S3가 위치한 리전
  }
}
