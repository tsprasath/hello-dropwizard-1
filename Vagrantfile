# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-docker-compose")
  system("vagrant plugin install vagrant-docker-compose")
  puts "Dependencies installed, please try the command again."
  exit
end

Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  # Configure VM options: here 1 GB of ram to prevent npm install Killed error
  config.vm.provider “virtualbox” do |v|
    v.memory = 1024
    v.cpus = 1
  end
  config.vm.provision :docker
  config.vm.provision :docker_compose, yml: "/vagrant/docker-compose.yml", run: "always"
end
