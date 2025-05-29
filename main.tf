terraform {
  required_providers {
    yandex = {
      source = "yandex-cloud/yandex"
    }
  }
  required_version = ">= 0.13"
}

provider "yandex" {
  zone = "ru-central1-b"
}

resource "yandex_storage_bucket" "my-bucket" {
  bucket     = "my-bucket-1747076652"
  access_key = var.access_key_id
  secret_key = var.secret_access_key

  versioning {
    enabled = true
  }


  tags = {
    Name        = "TestBucket"
    Environment = "Edu"
  }
}

output "bucket_name" {
  value = yandex_storage_bucket.my-bucket.bucket
}


variable "access_key_id" {
  type      = string
  sensitive = true
}

variable "secret_access_key" {
  type      = string
  sensitive = true
}
