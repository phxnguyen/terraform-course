## output 

```zsh
➜  ex5 git:(main) ✗ terraform init    
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/random versions matching "~> 3.9"...
- Finding hashicorp/aws versions matching "~> 5.0"...
- Installing hashicorp/random v3.9.1...
- Installed hashicorp/random v3.9.1 (signed by HashiCorp)
- Installing hashicorp/aws v5.100.0...
- Installed hashicorp/aws v5.100.0 (signed by HashiCorp)

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
➜  ex5 git:(main) ✗ terraform plan 
╷
│ Error: Invalid template interpolation value
│ 
│   on main.tf line 20, in resource "aws_s3_bucket" "ex5_bucket":
│   20:     bucket = "ex5-bucket-${random_id.bucket_suffix}"
│     ├────────────────
│     │ random_id.bucket_suffix is object with 8 attributes
│ 
│ Cannot include the given value in a string template: string required, but have object.
╵
➜  ex5 git:(main) ✗ terraform plan 

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

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
now.
➜  ex5 git:(main) ✗ terraform apply 

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
random_id.bucket_suffix: Creation complete after 0s [id=ndau3b3q]
aws_s3_bucket.ex5_bucket: Creating...
aws_s3_bucket.ex5_bucket: Creation complete after 2s [id=ex5-bucket-9dd6aeddbdea]

Apply complete! Resources: 2 added, 0 changed, 0 destroyed.

Outputs:

ex5_bucket_name = "ex5-bucket-9dd6aeddbdea"
➜  ex5 git:(main) ✗ terraform destroy 
random_id.bucket_suffix: Refreshing state... [id=ndau3b3q]
aws_s3_bucket.ex5_bucket: Refreshing state... [id=ex5-bucket-9dd6aeddbdea]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_s3_bucket.ex5_bucket will be destroyed
  - resource "aws_s3_bucket" "ex5_bucket" {
      - arn                         = "arn:aws:s3:::ex5-bucket-9dd6aeddbdea" -> null
      - bucket                      = "ex5-bucket-9dd6aeddbdea" -> null
      - bucket_domain_name          = "ex5-bucket-9dd6aeddbdea.s3.amazonaws.com" -> null
      - bucket_regional_domain_name = "ex5-bucket-9dd6aeddbdea.s3.ap-southeast-1.amazonaws.com" -> null
      - force_destroy               = false -> null
      - hosted_zone_id              = "Z3O0J2DXBE1FTB" -> null
      - id                          = "ex5-bucket-9dd6aeddbdea" -> null
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
      - b64_std     = "ndau3b3q" -> null
      - b64_url     = "ndau3b3q" -> null
      - byte_length = 6 -> null
      - dec         = "173545382329834" -> null
      - hex         = "9dd6aeddbdea" -> null
      - id          = "ndau3b3q" -> null
    }

Plan: 0 to add, 0 to change, 2 to destroy.

Changes to Outputs:
  - ex5_bucket_name = "ex5-bucket-9dd6aeddbdea" -> null

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_s3_bucket.ex5_bucket: Destroying... [id=ex5-bucket-9dd6aeddbdea]
aws_s3_bucket.ex5_bucket: Destruction complete after 1s
random_id.bucket_suffix: Destroying... [id=ndau3b3q]
random_id.bucket_suffix: Destruction complete after 0s

Destroy complete! Resources: 2 destroyed.
```