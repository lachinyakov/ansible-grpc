VAGRANTFILE_API_VERSION = "2"
Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
# provider -  virtual-box
# config.vm.box = "ubuntu/trusty64"

#provider - lxc
  config.vm.box = "fgrehm/precise64-lxc"

  config.vm.network "forwarded_port", guest: 80, host: 8080

  config.vm.synced_folder "./", "/vagrant_data"

  config.vm.provision :ansible do |ansible|
    ansible.playbook = "build/install.yml"
  end

end
