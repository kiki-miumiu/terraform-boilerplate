# terraform-boilerplate

## Prerequiste
### Configurtaion for internal artifactory
```
touch ~/.terraformrc
```
* add following to ~/.terraformrc or ./terraform/config.tfrc
```
provider_installation {
    direct {
        exclude = ["registry.terraform.io/*/*"]
    }
    network_mirror {
        url = "https://artifactory.internal.<add the internal domain here>/artifactory/api/terraform/io.terraform.registry/providers/"
    }
}
```
### Configuration for AWS
```
export AWS_ACCESS_KEY_ID=""
export AWS_SECRET_ACCESS_KEY=""
export AWS_SESSION_TOKEN=""
```

## Usage
```bash
cd terraform
terraform init --backend-config=env/dev01_SD000_001.conf
terraform plan --var-file=env/dev01_SD000_001.tfvars
terraform destroy --var-file=env/dev01_SD000_001.tfvars
```

