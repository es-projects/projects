# Software Engineering Project

## Getting Started

### Clone the Repo
```bash
git clone https://github.com/es-projects/projects.git
```

### Start the VM
Start the virtual machine and ssh into it:
```bash
vagrant up && vagrant ssh
```

### Starting the Rails Server
```bash
cd /vagrant
rails server --binding 0.0.0.0
```
You can now access it on `localhost:3000`

### Destroy the VM
If you mess up something just destroy the machine and then start it again
```bash
vagrant halt
vagrant destroy
vagrant up
```

## Vagrant File
The vagrant file uses the [jadesystems/rails-5-2](https://app.vagrantup.com/jadesystems/boxes/rails-5-2) base box with a script to update some apps

### Versions
* npm 6.12.1
* Ruby 2.6.5
* Yarn 1.19.2
* PSQL 10.10
* Rails 6.0.1
* Redis 4.0.9
* NodeJS 12.13.1

## Configuration
* `config/database.yml` - PostgreSQL DB config file

## Database
The script will create the `vagrant_development`, `vagrant_test` and `vagrant_production` databases and setup the PSQL environment automatically.

The default database user name and password are `vagrant`

## User setup
You can, of course, change the database owner or password. To do so:
```bash
sudo -u postgres psql -c "create role pg with superuser createdb login password 'pg';"
```

Then change the user name and password in all the appropriate places in `config/database.yml`

## Ruby Dependencies
This probably will not be updated, just check the `Gemfile`
* Rails

## Test Suite