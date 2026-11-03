## output 

```bash
➜  ex6 git:(main) ✗ terraform init    
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Finding hashicorp/random versions matching "~> 3.9"...
- Installing hashicorp/aws v5.100.0...
- Installed hashicorp/aws v5.100.0 (signed by HashiCorp)
- Installing hashicorp/random v3.9.1...
- Installed hashicorp/random v3.9.1 (signed by HashiCorp)

Terraform has created a lock file .terraform.lock.hcl to record the provider
selections it made above. Include this file in your version control repository
so that Terraform can guarantee to make the same selections by default when
you run "terraform init" in the future.

Terraform has been successfully initialized!

You may now begin working with Terraform. Try running "terraform plan" to see
any changes that are required for your infrastructure. All Terraform commands
should now work.

If you ever set or change modules or backend configuration for Terraform,
rerun this command to reinitialize your working directory. If you forget, other
commands will detect it and remind you to do so if necessary.
➜  ex6 git:(main) ✗ terraform validate
Success! The configuration is valid.

➜  ex6 git:(main) ✗ terraform fmt       
main.tf
➜  ex6 git:(main) ✗ terraform fmt -recursive 
➜  ex6 git:(main) ✗ terraform plan           

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.ex5_bucket will be created
  + resource "aws_s3_bucket" "ex5_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = (known after apply)
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # random_id.bucket_suffix will be created
  + resource "random_id" "bucket_suffix" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 6
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + ex5_bucket_name = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
now.
➜  ex6 git:(main) ✗ terraform plan > plan.txt 
➜  ex6 git:(main) ✗ terraform plan -out=tfplan 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.ex5_bucket will be created
  + resource "aws_s3_bucket" "ex5_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = (known after apply)
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # random_id.bucket_suffix will be created
  + resource "random_id" "bucket_suffix" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 6
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + ex5_bucket_name = (known after apply)

───────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Saved the plan to: tfplan

To perform exactly these actions, run the following command to apply:
    terraform apply "tfplan"
➜  ex6 git:(main) ✗ terraform plan -out=tfplan 
➜  ex6 git:(main) ✗ 
➜  ex6 git:(main) ✗ terraform apply             

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_s3_bucket.ex5_bucket will be created
  + resource "aws_s3_bucket" "ex5_bucket" {
      + acceleration_status         = (known after apply)
      + acl                         = (known after apply)
      + arn                         = (known after apply)
      + bucket                      = (known after apply)
      + bucket_domain_name          = (known after apply)
      + bucket_prefix               = (known after apply)
      + bucket_regional_domain_name = (known after apply)
      + force_destroy               = false
      + hosted_zone_id              = (known after apply)
      + id                          = (known after apply)
      + object_lock_enabled         = (known after apply)
      + policy                      = (known after apply)
      + region                      = (known after apply)
      + request_payer               = (known after apply)
      + tags_all                    = (known after apply)
      + website_domain              = (known after apply)
      + website_endpoint            = (known after apply)

      + cors_rule (known after apply)

      + grant (known after apply)

      + lifecycle_rule (known after apply)

      + logging (known after apply)

      + object_lock_configuration (known after apply)

      + replication_configuration (known after apply)

      + server_side_encryption_configuration (known after apply)

      + versioning (known after apply)

      + website (known after apply)
    }

  # random_id.bucket_suffix will be created
  + resource "random_id" "bucket_suffix" {
      + b64_std     = (known after apply)
      + b64_url     = (known after apply)
      + byte_length = 6
      + dec         = (known after apply)
      + hex         = (known after apply)
      + id          = (known after apply)
    }

Plan: 2 to add, 0 to change, 0 to destroy.

Changes to Outputs:
  + ex5_bucket_name = (known after apply)

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

random_id.bucket_suffix: Creating...
random_id.bucket_suffix: Creation complete after 0s [id=kFmWTu9K]
aws_s3_bucket.ex5_bucket: Creating...
aws_s3_bucket.ex5_bucket: Creation complete after 2s [id=ex5-bucket-9059964eef4a]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ex5_bucket_name = "ex5-bucket-9059964eef4a"
➜  ex6 git:(main) ✗ terraform show  
# aws_s3_bucket.ex5_bucket:
resource "aws_s3_bucket" "ex5_bucket" {
    acceleration_status         = null
    arn                         = "arn:aws:s3:::ex5-bucket-9059964eef4a"
    bucket                      = "ex5-bucket-9059964eef4a"
    bucket_domain_name          = "ex5-bucket-9059964eef4a.s3.amazonaws.com"
    bucket_prefix               = null
    bucket_regional_domain_name = "ex5-bucket-9059964eef4a.s3.ap-southeast-1.amazonaws.com"
    force_destroy               = false
    hosted_zone_id              = "Z3O0J2DXBE1FTB"
    id                          = "ex5-bucket-9059964eef4a"
    object_lock_enabled         = false
    policy                      = null
    region                      = "ap-southeast-1"
    request_payer               = "BucketOwner"
    tags_all                    = {}

    grant {
        id          = "429a23fbb87cf232d01fcfdcf2ef03fe7491225cc5d7388fe1325b8389f0f440"
        permissions = [
            "FULL_CONTROL",
        ]
        type        = "CanonicalUser"
        uri         = null
    }

    server_side_encryption_configuration {
        rule {
            bucket_key_enabled = false

            apply_server_side_encryption_by_default {
                kms_master_key_id = null
                sse_algorithm     = "AES256"
            }
        }
    }

    versioning {
        enabled    = false
        mfa_delete = false
    }
}

# random_id.bucket_suffix:
resource "random_id" "bucket_suffix" {
    b64_std     = "kFmWTu9K"
    b64_url     = "kFmWTu9K"
    byte_length = 6
    dec         = "158714448244554"
    hex         = "9059964eef4a"
    id          = "kFmWTu9K"
}


Outputs:

ex5_bucket_name = "ex5-bucket-9059964eef4a"
➜  ex6 git:(main) ✗ terraform state list 
aws_s3_bucket.ex5_bucket
random_id.bucket_suffix
➜  ex6 git:(main) ✗ terraform destroy    
random_id.bucket_suffix: Refreshing state... [id=kFmWTu9K]
aws_s3_bucket.ex5_bucket: Refreshing state... [id=ex5-bucket-9059964eef4a]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_s3_bucket.ex5_bucket will be destroyed
  - resource "aws_s3_bucket" "ex5_bucket" {
      - arn                         = "arn:aws:s3:::ex5-bucket-9059964eef4a" -> null
      - bucket                      = "ex5-bucket-9059964eef4a" -> null
      - bucket_domain_name          = "ex5-bucket-9059964eef4a.s3.amazonaws.com" -> null
      - bucket_regional_domain_name = "ex5-bucket-9059964eef4a.s3.ap-southeast-1.amazonaws.com" -> null
      - force_destroy               = false -> null
      - hosted_zone_id              = "Z3O0J2DXBE1FTB" -> null
      - id                          = "ex5-bucket-9059964eef4a" -> null
      - object_lock_enabled         = false -> null
      - region                      = "ap-southeast-1" -> null
      - request_payer               = "BucketOwner" -> null
      - tags                        = {} -> null
      - tags_all                    = {} -> null
        # (3 unchanged attributes hidden)

      - grant {
          - id          = "429a23fbb87cf232d01fcfdcf2ef03fe7491225cc5d7388fe1325b8389f0f440" -> null
          - permissions = [
              - "FULL_CONTROL",
            ] -> null
          - type        = "CanonicalUser" -> null
            # (1 unchanged attribute hidden)
        }

      - server_side_encryption_configuration {
          - rule {
              - bucket_key_enabled = false -> null

              - apply_server_side_encryption_by_default {
                  - sse_algorithm     = "AES256" -> null
                    # (1 unchanged attribute hidden)
                }
            }
        }

      - versioning {
          - enabled    = false -> null
          - mfa_delete = false -> null
        }
    }

  # random_id.bucket_suffix will be destroyed
  - resource "random_id" "bucket_suffix" {
      - b64_std     = "kFmWTu9K" -> null
      - b64_url     = "kFmWTu9K" -> null
      - byte_length = 6 -> null
      - dec         = "158714448244554" -> null
      - hex         = "9059964eef4a" -> null
      - id          = "kFmWTu9K" -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - ex5_bucket_name = "ex5-bucket-9059964eef4a" -> null

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_s3_bucket.ex5_bucket: Destroying... [id=ex5-bucket-9059964eef4a]
aws_s3_bucket.ex5_bucket: Destruction complete after 0s
random_id.bucket_suffix: Destroying... [id=kFmWTu9K]
random_id.bucket_suffix: Destruction complete after 0s

Destroy complete! Resources: 2 destroyed.
```