# Terraform basic EC2 creation module

## Arguments

Arguments marked with `*` are **mandatory**

* *ami_id** - User must provide an ami id (Amazon Machine Image ID).
            Format is `string`

* *instance_type** - User must provide instance type (EX: "t3.micro", "t3.small", etc.).
            Instance Type must be anyone from the list ["t3.micro", "t3.small", "t2.micro", "t2.small"]
            Format is `string`

* *instance_name** - User must provide name of instance which is to be created.
            Format is `string`

*  *sg_ids* - User can provide security group ids to attach to the EC2 instance.
            Format is `list(string)`


## Outputs

  *public_ip* - Public IP address of the instance created

  *private_ip* - Private IP address of the instance created
  
  *instance_id* - Instance ID of the instance created