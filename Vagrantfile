# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "centos/7"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "4096"
    vb.cpus = 2
  end

  config.vm.define "controller-0" do |c|
      c.vm.hostname = "controller-0"
      c.vm.network "private_network", ip: "10.240.0.10"

      c.vm.provision :shell, :path => "scripts/setup_hosts.sh"
  end

end
