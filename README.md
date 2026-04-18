[!WARNING]
**⚠️ This project has been archived and is no longer maintained. ⚠️**

Github has shown it does not respect its users. Other have said it better than I can.

- https://www.theregister.com/2022/06/30/software_freedom_conservancy_quits_github/
- https://www.andrlik.org/dispatches/migrating-from-github-motivation/
- https://techresolve.blog/2025/12/27/looking-to-migrate-company-off-github-whats-the/
- https://lord.io/leaving-github/
- https://dev.to/alanwest/how-to-actually-migrate-from-github-to-codeberg-without-losing-your-mind-33bf>
> Development has moved to Codeberg:
> **➡️ https://codeberg.org/DavidJEddy/database_clustering_with_mariadb_and_galera**
>
> Please update your remotes:
> ```bash
> git remote set-url origin https://codeberg.org/DavidJEddy/database_clustering_with_mariadb_and_galera
> ```

---
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