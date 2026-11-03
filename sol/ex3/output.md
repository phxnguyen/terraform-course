## output 

```zsh
➜  ex3 git:(main) ✗ terraform init   
Initializing the backend...

Initializing provider plugins...
- Finding hashicorp/aws versions matching "~> 5.0"...
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
➜  ex3 git:(main) ✗ terraform plan 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_internet_gateway.igw_ex2 will be created
  + resource "aws_internet_gateway" "igw_ex2" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "igw_ex2"
        }
      + tags_all = {
          + "Name" = "igw_ex2"
        }
      + vpc_id   = (known after apply)
    }

  # aws_route_table.rtb_ex2_public will be created
  + resource "aws_route_table" "rtb_ex2_public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "rtb_ex2_public"
        }
      + tags_all         = {
          + "Name" = "rtb_ex2_public"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.rtb_assoc_ex2_public will be created
  + resource "aws_route_table_association" "rtb_assoc_ex2_public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_subnet.subnet_ex2_private will be created
  + resource "aws_subnet" "subnet_ex2_private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "subnet_ex2_private"
        }
      + tags_all                                       = {
          + "Name" = "subnet_ex2_private"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.subnet_ex2_public will be created
  + resource "aws_subnet" "subnet_ex2_public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "subnet_ex2_public"
        }
      + tags_all                                       = {
          + "Name" = "subnet_ex2_public"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.vpc_ex2 will be created
  + resource "aws_vpc" "vpc_ex2" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "vpc_ex2"
        }
      + tags_all                             = {
          + "Name" = "vpc_ex2"
        }
    }

Plan: 6 to add, 0 to change, 0 to destroy.

────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────────

Note: You didn't use the -out option to save this plan, so Terraform can't guarantee to take exactly these actions if you run "terraform apply"
now.
➜  ex3 git:(main) ✗ terraform apply 

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # aws_internet_gateway.igw_ex2 will be created
  + resource "aws_internet_gateway" "igw_ex2" {
      + arn      = (known after apply)
      + id       = (known after apply)
      + owner_id = (known after apply)
      + tags     = {
          + "Name" = "igw_ex2"
        }
      + tags_all = {
          + "Name" = "igw_ex2"
        }
      + vpc_id   = (known after apply)
    }

  # aws_route_table.rtb_ex2_public will be created
  + resource "aws_route_table" "rtb_ex2_public" {
      + arn              = (known after apply)
      + id               = (known after apply)
      + owner_id         = (known after apply)
      + propagating_vgws = (known after apply)
      + route            = [
          + {
              + cidr_block                 = "0.0.0.0/0"
              + gateway_id                 = (known after apply)
                # (11 unchanged attributes hidden)
            },
        ]
      + tags             = {
          + "Name" = "rtb_ex2_public"
        }
      + tags_all         = {
          + "Name" = "rtb_ex2_public"
        }
      + vpc_id           = (known after apply)
    }

  # aws_route_table_association.rtb_assoc_ex2_public will be created
  + resource "aws_route_table_association" "rtb_assoc_ex2_public" {
      + id             = (known after apply)
      + route_table_id = (known after apply)
      + subnet_id      = (known after apply)
    }

  # aws_subnet.subnet_ex2_private will be created
  + resource "aws_subnet" "subnet_ex2_private" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.1.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "subnet_ex2_private"
        }
      + tags_all                                       = {
          + "Name" = "subnet_ex2_private"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_subnet.subnet_ex2_public will be created
  + resource "aws_subnet" "subnet_ex2_public" {
      + arn                                            = (known after apply)
      + assign_ipv6_address_on_creation                = false
      + availability_zone                              = (known after apply)
      + availability_zone_id                           = (known after apply)
      + cidr_block                                     = "10.0.0.0/24"
      + enable_dns64                                   = false
      + enable_resource_name_dns_a_record_on_launch    = false
      + enable_resource_name_dns_aaaa_record_on_launch = false
      + id                                             = (known after apply)
      + ipv6_cidr_block_association_id                 = (known after apply)
      + ipv6_native                                    = false
      + map_public_ip_on_launch                        = false
      + owner_id                                       = (known after apply)
      + private_dns_hostname_type_on_launch            = (known after apply)
      + tags                                           = {
          + "Name" = "subnet_ex2_public"
        }
      + tags_all                                       = {
          + "Name" = "subnet_ex2_public"
        }
      + vpc_id                                         = (known after apply)
    }

  # aws_vpc.vpc_ex2 will be created
  + resource "aws_vpc" "vpc_ex2" {
      + arn                                  = (known after apply)
      + cidr_block                           = "10.0.0.0/16"
      + default_network_acl_id               = (known after apply)
      + default_route_table_id               = (known after apply)
      + default_security_group_id            = (known after apply)
      + dhcp_options_id                      = (known after apply)
      + enable_dns_hostnames                 = (known after apply)
      + enable_dns_support                   = true
      + enable_network_address_usage_metrics = (known after apply)
      + id                                   = (known after apply)
      + instance_tenancy                     = "default"
      + ipv6_association_id                  = (known after apply)
      + ipv6_cidr_block                      = (known after apply)
      + ipv6_cidr_block_network_border_group = (known after apply)
      + main_route_table_id                  = (known after apply)
      + owner_id                             = (known after apply)
      + tags                                 = {
          + "Name" = "vpc_ex2"
        }
      + tags_all                             = {
          + "Name" = "vpc_ex2"
        }
    }

Plan: 6 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes        

aws_vpc.vpc_ex2: Creating...
aws_vpc.vpc_ex2: Creation complete after 2s [id=vpc-0e977e23b20dbed78]
aws_internet_gateway.igw_ex2: Creating...
aws_subnet.subnet_ex2_public: Creating...
aws_subnet.subnet_ex2_private: Creating...
aws_internet_gateway.igw_ex2: Creation complete after 1s [id=igw-04275a635eb46856b]
aws_route_table.rtb_ex2_public: Creating...
aws_subnet.subnet_ex2_private: Creation complete after 1s [id=subnet-0e9c57227d1041309]
aws_subnet.subnet_ex2_public: Creation complete after 1s [id=subnet-02b7861cfba27f590]
aws_route_table.rtb_ex2_public: Creation complete after 1s [id=rtb-0a4f5f93511cd6786]
aws_route_table_association.rtb_assoc_ex2_public: Creating...
aws_route_table_association.rtb_assoc_ex2_public: Creation complete after 0s [id=rtbassoc-0ed3099b2e0aadde1]

Apply complete! Resources: 6 added, 0 changed, 0 destroyed.
➜  ex3 git:(main) ✗ terraform destroy 
aws_vpc.vpc_ex2: Refreshing state... [id=vpc-0e977e23b20dbed78]
aws_internet_gateway.igw_ex2: Refreshing state... [id=igw-04275a635eb46856b]
aws_subnet.subnet_ex2_private: Refreshing state... [id=subnet-0e9c57227d1041309]
aws_subnet.subnet_ex2_public: Refreshing state... [id=subnet-02b7861cfba27f590]
aws_route_table.rtb_ex2_public: Refreshing state... [id=rtb-0a4f5f93511cd6786]
aws_route_table_association.rtb_assoc_ex2_public: Refreshing state... [id=rtbassoc-0ed3099b2e0aadde1]

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:
  - destroy

Terraform will perform the following actions:

  # aws_internet_gateway.igw_ex2 will be destroyed
  - resource "aws_internet_gateway" "igw_ex2" {
      - arn      = "arn:aws:ec2:ap-southeast-1:854315671512:internet-gateway/igw-04275a635eb46856b" -> null
      - id       = "igw-04275a635eb46856b" -> null
      - owner_id = "854315671512" -> null
      - tags     = {
          - "Name" = "igw_ex2"
        } -> null
      - tags_all = {
          - "Name" = "igw_ex2"
        } -> null
      - vpc_id   = "vpc-0e977e23b20dbed78" -> null
    }

  # aws_route_table.rtb_ex2_public will be destroyed
  - resource "aws_route_table" "rtb_ex2_public" {
      - arn              = "arn:aws:ec2:ap-southeast-1:854315671512:route-table/rtb-0a4f5f93511cd6786" -> null
      - id               = "rtb-0a4f5f93511cd6786" -> null
      - owner_id         = "854315671512" -> null
      - propagating_vgws = [] -> null
      - route            = [
          - {
              - cidr_block                 = "0.0.0.0/0"
              - gateway_id                 = "igw-04275a635eb46856b"
                # (11 unchanged attributes hidden)
            },
        ] -> null
      - tags             = {
          - "Name" = "rtb_ex2_public"
        } -> null
      - tags_all         = {
          - "Name" = "rtb_ex2_public"
        } -> null
      - vpc_id           = "vpc-0e977e23b20dbed78" -> null
    }

  # aws_route_table_association.rtb_assoc_ex2_public will be destroyed
  - resource "aws_route_table_association" "rtb_assoc_ex2_public" {
      - id             = "rtbassoc-0ed3099b2e0aadde1" -> null
      - route_table_id = "rtb-0a4f5f93511cd6786" -> null
      - subnet_id      = "subnet-02b7861cfba27f590" -> null
        # (1 unchanged attribute hidden)
    }

  # aws_subnet.subnet_ex2_private will be destroyed
  - resource "aws_subnet" "subnet_ex2_private" {
      - arn                                            = "arn:aws:ec2:ap-southeast-1:854315671512:subnet/subnet-0e9c57227d1041309" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "ap-southeast-1c" -> null
      - availability_zone_id                           = "apse1-az3" -> null
      - cidr_block                                     = "10.0.1.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-0e9c57227d1041309" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "854315671512" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "subnet_ex2_private"
        } -> null
      - tags_all                                       = {
          - "Name" = "subnet_ex2_private"
        } -> null
      - vpc_id                                         = "vpc-0e977e23b20dbed78" -> null
        # (4 unchanged attributes hidden)
    }

  # aws_subnet.subnet_ex2_public will be destroyed
  - resource "aws_subnet" "subnet_ex2_public" {
      - arn                                            = "arn:aws:ec2:ap-southeast-1:854315671512:subnet/subnet-02b7861cfba27f590" -> null
      - assign_ipv6_address_on_creation                = false -> null
      - availability_zone                              = "ap-southeast-1a" -> null
      - availability_zone_id                           = "apse1-az2" -> null
      - cidr_block                                     = "10.0.0.0/24" -> null
      - enable_dns64                                   = false -> null
      - enable_lni_at_device_index                     = 0 -> null
      - enable_resource_name_dns_a_record_on_launch    = false -> null
      - enable_resource_name_dns_aaaa_record_on_launch = false -> null
      - id                                             = "subnet-02b7861cfba27f590" -> null
      - ipv6_native                                    = false -> null
      - map_customer_owned_ip_on_launch                = false -> null
      - map_public_ip_on_launch                        = false -> null
      - owner_id                                       = "854315671512" -> null
      - private_dns_hostname_type_on_launch            = "ip-name" -> null
      - tags                                           = {
          - "Name" = "subnet_ex2_public"
        } -> null
      - tags_all                                       = {
          - "Name" = "subnet_ex2_public"
        } -> null
      - vpc_id                                         = "vpc-0e977e23b20dbed78" -> null
        # (4 unchanged attributes hidden)
    }

  # aws_vpc.vpc_ex2 will be destroyed
  - resource "aws_vpc" "vpc_ex2" {
      - arn                                  = "arn:aws:ec2:ap-southeast-1:854315671512:vpc/vpc-0e977e23b20dbed78" -> null
      - assign_generated_ipv6_cidr_block     = false -> null
      - cidr_block                           = "10.0.0.0/16" -> null
      - default_network_acl_id               = "acl-0ba8a47acf056f476" -> null
      - default_route_table_id               = "rtb-07e718922a01322bb" -> null
      - default_security_group_id            = "sg-00b66d6585e5cc735" -> null
      - dhcp_options_id                      = "dopt-0a039608d617233e8" -> null
      - enable_dns_hostnames                 = false -> null
      - enable_dns_support                   = true -> null
      - enable_network_address_usage_metrics = false -> null
      - id                                   = "vpc-0e977e23b20dbed78" -> null
      - instance_tenancy                     = "default" -> null
      - ipv6_netmask_length                  = 0 -> null
      - main_route_table_id                  = "rtb-07e718922a01322bb" -> null
      - owner_id                             = "854315671512" -> null
      - tags                                 = {
          - "Name" = "vpc_ex2"
        } -> null
      - tags_all                             = {
          - "Name" = "vpc_ex2"
        } -> null
        # (4 unchanged attributes hidden)
    }

Plan: 0 to add, 0 to change, 6 to destroy.

Do you really want to destroy all resources?
  Terraform will destroy all your managed infrastructure, as shown above.
  There is no undo. Only 'yes' will be accepted to confirm.

  Enter a value: yes

aws_route_table_association.rtb_assoc_ex2_public: Destroying... [id=rtbassoc-0ed3099b2e0aadde1]
aws_subnet.subnet_ex2_private: Destroying... [id=subnet-0e9c57227d1041309]
aws_route_table_association.rtb_assoc_ex2_public: Destruction complete after 1s
aws_subnet.subnet_ex2_public: Destroying... [id=subnet-02b7861cfba27f590]
aws_route_table.rtb_ex2_public: Destroying... [id=rtb-0a4f5f93511cd6786]
aws_subnet.subnet_ex2_private: Destruction complete after 1s
aws_subnet.subnet_ex2_public: Destruction complete after 0s
aws_route_table.rtb_ex2_public: Destruction complete after 0s
aws_internet_gateway.igw_ex2: Destroying... [id=igw-04275a635eb46856b]
aws_internet_gateway.igw_ex2: Destruction complete after 1s
aws_vpc.vpc_ex2: Destroying... [id=vpc-0e977e23b20dbed78]
aws_vpc.vpc_ex2: Destruction complete after 0s
```