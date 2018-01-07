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

- apolloclark.osquery
- apolloclark.filebeat
- apolloclark.metricbeat
- apolloclark.heartbeat
- apolloclark.packetbeat

- geerlingguy.apache
- apolloclark.apache-modsecurity

- apolloclark.mysql
- apolloclark.mysql-mcafee-audit
- apolloclark.mysql-deploy

- geerlingguy.php-versions
- geerlingguy.php
- geerlingguy.apache-php-fpm
- geerlingguy.php-mysql
- geerlingguy.composer
