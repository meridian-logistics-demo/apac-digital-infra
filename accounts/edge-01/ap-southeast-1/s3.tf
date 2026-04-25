# S3 buckets in edge-01, ap-southeast-1.

resource "aws_s3_bucket" "edge01_catalogue_assets_01" {
  bucket = "edge01-catalogue-assets-01"
  tags   = {
    Name               = "edge01-catalogue-assets-01"
    Environment        = "production"
    Team               = "apac-digital"
    CostCenter         = "CC-5200"
    Application        = "catalogue"
    Owner              = "apac-digital@meridian-logistics.example"
    DataClassification = "pii"
  }
}

resource "aws_s3_bucket_ownership_controls" "edge01_catalogue_assets_01" {
  bucket = aws_s3_bucket.edge01_catalogue_assets_01.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "edge01_catalogue_assets_01" {
  bucket                  = aws_s3_bucket.edge01_catalogue_assets_01.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "edge01_catalogue_assets_01" {
  bucket = aws_s3_bucket.edge01_catalogue_assets_01.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket" "edge01_catalogue_assets_02" {
  bucket = "edge01-catalogue-assets-02"
  tags   = {
    Name        = "edge01-catalogue-assets-02"
    Environment = "production"
    Team        = "apac-digital"
    CostCenter  = "CC-5200"
    Application = "catalogue"
    Owner       = "apac-digital@meridian-logistics.example"
  }
}

resource "aws_s3_bucket_ownership_controls" "edge01_catalogue_assets_02" {
  bucket = aws_s3_bucket.edge01_catalogue_assets_02.id
  rule {
    object_ownership = "BucketOwnerEnforced"
  }
}

resource "aws_s3_bucket_public_access_block" "edge01_catalogue_assets_02" {
  bucket                  = aws_s3_bucket.edge01_catalogue_assets_02.id
  block_public_acls       = true
  ignore_public_acls      = true
  block_public_policy     = true
  restrict_public_buckets = true
}

resource "aws_s3_bucket_server_side_encryption_configuration" "edge01_catalogue_assets_02" {
  bucket = aws_s3_bucket.edge01_catalogue_assets_02.id
  rule {
    apply_server_side_encryption_by_default {
      sse_algorithm = "AES256"
    }
    bucket_key_enabled = false
  }
}

resource "aws_s3_bucket_versioning" "edge01_catalogue_assets_02" {
  bucket = aws_s3_bucket.edge01_catalogue_assets_02.id
  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_s3_bucket_logging" "edge01_catalogue_assets_02" {
  bucket        = aws_s3_bucket.edge01_catalogue_assets_02.id
  target_bucket = "audit-logs"
  target_prefix = "edge01-catalogue-assets-02/"
}
