# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://vagrantcloud.com/search.
  # https://app.vagrantup.com/jadesystems/rails-5-2
  config.vm.box = "jadesystems/rails-5-2"
  config.vm.define "projects"

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # NOTE: This will enable public access to the opened port
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine and only allow access
  # via 127.0.0.1 to disable public access
  # config.vm.network "forwarded_port", guest: 80, host: 8080, host_ip: "127.0.0.1"

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  # config.vm.network "private_network", ip: "192.168.33.10"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    vb.linked_clone = true
    vb.memory = "1024"
    vb.cpus = 1
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    export DEBIAN_FRONTEND=noninteractive
    # UNISTALL OLD PACKAGES
    echo "================= REMOVING OLD PACKAGES ====================="
    apt-get remove --purge -y -q nodejs yarn ruby
    # UPDATE
    echo "====================== UPDATING ====================="
    apt-get update -q
    #apt-get dist-upgrade -y -q
    apt-get upgrade -y -q
    apt-get autoremove -y -q
    # INSTALL NODE & YARN
    echo "==================== INSTALLING NODEJS ====================="
    curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
    curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
    echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
    apt-get update -q
    apt-get install -y -q git-core zlib1g-dev build-essential libssl-dev libreadline-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt1-dev libcurl4-openssl-dev software-properties-common libffi-dev nodejs yarn openssl libssl-dev
    # ADD PSQL USERS & DB
    echo "================= ADDING POSTGRE USERS & DB ====================="
    sudo -u postgres psql -c "create role pg with superuser createdb login password 'pg';"
    sudo -u postgres psql -c "create role vagrant with superuser createdb login password 'vagrant';"
    sudo -u postgres psql -c "create role ubuntu with superuser createdb login password 'ubuntu';"
    sudo -u postgres psql -c "create database vagrant_development;"
    sudo -u postgres psql -c "create database vagrant_test;"
    sudo -u postgres psql -c "create database vagrant_production;"
    # INSTALL RUBY 6 (SOURCE)
    echo "==================== INSTALLING RUBY ====================="
    wget http://ftp.ruby-lang.org/pub/ruby/2.6/ruby-2.6.5.tar.gz
    tar -xzvf ruby-2.6.5.tar.gz
    cd ruby-2.6.5/
    ./configure
    make
    make install
    # INSTALL GEMS
    echo "================ INSTALLING GEMS ====================="
    gem install bundler
    gem install rails
    echo "==================== TESTING ====================="
    # TEST
    echo "NPM " `npm -v`
    echo "RUBY " `ruby -v`
    echo "YARN " `yarn --version`
    echo "PSQL " `psql --version`
    echo "RAILS " `rails --version`
    echo "REDIS " `redis-server --version`
    echo "NODEJS " `nodejs -v`
    echo "======================== :) =========================="
  SHELL
end
