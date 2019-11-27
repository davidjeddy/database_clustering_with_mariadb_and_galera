# Database clustering with MariaDB and Galera

Example code to use w/ the article `Database clustering with MariaDB and Galera.` from [https://blog.davidjeddy.com](https://blog.davidjeddy.com).

## Requirements

- [Linux](https://www.linux.org/)
- [CLI Terminal](https://en.wikipedia.org/wiki/Terminal#Software)
- (optional) [Terraform 0.12.x](https://www.terraform.io/downloads.html)
- AWS account
  - [API credentials provisioned](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html)
  - [PEM key provisioned](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-key-pairs.html)

## Usage

### Start

```sh
git clone ...
export AWS_ACCESS_KEY_ID=YOUR_API_ACCESS_KEY_ID
export AWS_SECRET_ACCESS_KEY=YOUR_API_SECRET_KEY
export AWS_PEM_KEY_NAME=NAME_OF_YOUR_PEM_KEY
terraform init
terraform plan -out plan.out -var 'key_name='${AWS_PEM_KEY_NAME}
terraform apply plan.out
```

### Stop

```sh
terraformn destroy
# provide pem key name when prompted
# type `yes` and press [enter] when asked for confirmation
```

## Note

- This project is a supliment for [How To: Database clustering with MariaDB and Galera]().
- This is NOT production grade code, please do not use it as such.
- Terraform logic assumes us-east-1 and default VPC for simplicity.
