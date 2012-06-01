Vagrant::Config.run do |config|
  if ['a'].pack('P').length > 4
    config.vm.box = 'precise64'
    config.vm.box_url = 'http://files.vagrantup.com/precise64.box'
  else
    config.vm.box = 'precise32'
    config.vm.box_url = 'http://files.vagrantup.com/precise32.box'
  end
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = 'puppet'
    puppet.manifest_file = 'node.pp'
    puppet.module_path = 'puppet/modules'
  end
  config.vm.forward_port 3306, 3306
  config.vm.forward_port 6379, 6379
end
