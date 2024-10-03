# Terraform basic EC2 creation module

## Arguments

* ami_id - User must provide an ami id (Amazon Machine Image ID).
            format is `string`

* instance_type - User must provide instance type (EX: "t3.micro", "t3.small", etc.).
            format is `string`

* instance_name - User must provide name of instance which is to be created.
            format is `string`

  sg_ids - User can provide security group ids to attach to the EC2 instance.
            format is `list(string)`


## Outputs

  public_ip - Public IP address of the instance created

  private_ip - Private IP address of the instance created
  
  instance_id - Instance ID of the instance created