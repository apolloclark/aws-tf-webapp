# packer-aws-webapp

Packer based demo of provisioning a LAMP webapp stack using Ansible, for AWS.

## Deploy Locally
```shell
git clone https://github.com/apolloclark/packer-aws-webapp
vagrant up
vagrant ssh
# http://127.0.0.1:8080
```

## Deploy to AWS
```shell
git clone https://github.com/apolloclark/packer-aws-webapp
./build_packer.sh
```

## MySQL
```shell
mysql -h 127.0.0.1 -u root -p
```

## Ansible

Ansible Roles:
- geerlingguy.firewall
- geerlingguy.ntp
- geerlingguy.git
- geerlingguy.apache
- geerlingguy.mysql
- geerlingguy.php-versions
- geerlingguy.php
- geerlingguy.apache-php-fpm
- geerlingguy.php-mysql
- geerlingguy.composer
- apolloclark.mysql-deploy