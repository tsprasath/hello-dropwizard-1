# -*- mode: ruby -*-
# vi: set ft=ruby :

unless Vagrant.has_plugin?("vagrant-docker-compose")
  system("vagrant plugin install vagrant-docker-compose")
  puts "Dependencies installed, please try the command again."
  exit
end

unless Vagrant.has_plugin?("vagrant-google")
  system("vagrant plugin install vagrant-google")
  puts "Dependencies installed, please try the command again."
  exit
end



Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.provision :docker
  config.vm.provision :docker_compose
  config.vm.provision :shell, inline: "cd /vagrant && docker-compose pull"
  #config.vm.provision :docker_compose
  #config.vm.provision :shell, inline: "cd /vagrant && docker-compose stop && docker-compose rm -f && docker-compose up"
end