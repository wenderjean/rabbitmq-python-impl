VAGRANT_API_VERSION = 2

Vagrant.configure(VAGRANT_API_VERSION) do |config|
  config.vm.box = "ubuntu-puppet"
  config.librarian_puppet.puppetfile_dir = "librarian"

  config.vm.define :producer do |producer|
    producer.vm.network :private_network, :ip => "192.168.33.20"
    producer.vm.synced_folder "app/", "/home/vagrant/app"
    producer.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "python.pp"
      puppet.module_path   = "modules"
    end
  end

  config.vm.define :rabbit do |rabbit|
    rabbit.vm.network :private_network, :ip => "192.168.33.21"
    rabbit.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "rabbit.pp"
      puppet.module_path   = "modules"
    end
  end

  config.vm.define :consumer do |consumer|
    consumer.vm.network :private_network, :ip => "192.168.33.22"
    consumer.vm.synced_folder "app/", "/home/vagrant/app"
    consumer.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "python.pp"
      puppet.module_path   = "modules"
    end
  end

  config.vm.define :redis do |redis|
    redis.vm.network :private_network, :ip => "192.168.33.23"
    redis.vm.synced_folder "app/", "/home/vagrant/app"
    redis.vm.provision "puppet" do |puppet|
      puppet.manifest_file = "redis.pp"
      puppet.module_path   = "modules"
    end
  end
end
