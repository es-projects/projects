# Software Engineering Project
[![Build Status](https://travis-ci.org/es-projects/projects.svg?branch=master)](https://travis-ci.org/es-projects/projects)
[![Maintainability](https://api.codeclimate.com/v1/badges/431aab00e0ca534b27fc/maintainability)](https://codeclimate.com/github/es-projects/projects/maintainability)
[![Test Coverage](https://api.codeclimate.com/v1/badges/431aab00e0ca534b27fc/test_coverage)](https://codeclimate.com/github/es-projects/projects/test_coverage)
![Codacy Grade](https://img.shields.io/codacy/grade/17843b8c5e85419d858ae25ab9a75294)
![Snyk Vulnerabilities for GitHub Repo](https://img.shields.io/snyk/vulnerabilities/github/es-projects/projects)
[![GitHub issues](https://img.shields.io/github/issues/es-projects/projects)](https://github.com/es-projects/projects/issues/)
[![GitHub pull requests](https://img.shields.io/github/issues-pr/es-projects/projects)](https://github.com/es-projects/projects/pulls/)
## Getting Started

### Starting a new Rails Project
You don't need to do this step (reference only), the project is already created
```bash
rails new . --database=postgresql --skip-coffee
```

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

### Database 
Delete all databases
```bash
rails db:drop
```
Create databases
```bash
rails db:create
```
Run migrations 
```bash
rails db:migrate
```
Seed
```bash
rails db:seed
```

### Tests
Running tests
```bash
RAILS_ENV=test rails rails test
```
Running system tests
```bash
RAILS_ENV=test rails test:system
```

### Destroy the VM
If you mess up something just destroy the machine and then start it again
```bash
vagrant halt
vagrant destroy
vagrant up
```

### Bugs
If the symlink creation fails on Windows you have to run vagrant with administrator privileges.
First stop the vm
```bash 
vagrant halt
```
Then run CMD or git bash or whatever you use to run vagrant with administrator privileges (Right-Click -> Run as administrator)
```bash
vagrant up
vagrant ssh
yarn install --check-files
```

## Vagrant File
The vagrant file uses the [jadesystems/rails-5-2](https://app.vagrantup.com/jadesystems/boxes/rails-5-2) base box with a script to update some apps

### Versions
*   npm 6.12.1
*   Ruby 2.6.5
*   Yarn 1.19.2
*   PSQL 10.10
*   Rails 6.0.1
*   Redis 4.0.9
*   NodeJS 12.13.1

## Configuration
*   `config/database.yml` - PostgreSQL DB config file

## Database
The script will create the `vagrant_development`, `vagrant_test` and `vagrant_production` databases and setup the PSQL environment automatically.

The default database user name and password are `vagrant`

## User setup
You can, of course, change the database owner or password. To do so:
```bash
sudo -u postgres psql -c "create role pg with superuser createdb login password 'pg';"
```

Then change the user name and password in all the appropriate places in `config/database.yml`

## Dependencies
This probably will not be updated, just check the `Gemfile`
*   Ruby (2.6.5)
*   Rails (~>6.0.1)
*   Pg (>= 0.18)
*   Puma (~> 4.1)
*   Sass-rails (>= 6)
*   Webpacker (~> 4.0)
*   Turbolinks (~> 5)
*   Jbuilder (~> 2.7)
*   Faker
*   Bootsnap (>= 1.4.2)