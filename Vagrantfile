# NOTE: 
# you need to install a couple of vagrant plugins:
#
# vagrant plugin install vagrant-docker-compose
# 
# vagrant plugin install vagrant-gatling-rsync
# 
# vagrant plugin install vagrant-vbguest
Vagrant.configure(2) do |config|
  config.vm.box = “ubuntu/trusty64”
  # Configure VM options: here 1 GB of ram to prevent npm install Killed error
  config.vm.provider “virtualbox” do |v|
    v.memory = 1024
    v.cpus = 1
  end
  config.vm.provision :docker
  config.vm.provision :docker_compose, yml: "/vagrant/docker-compose.yml", run: "always"
end
