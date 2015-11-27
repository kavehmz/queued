# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure('2') do |config|
  if Vagrant.has_plugin?('vagrant-cachier')
    config.cache.scope = :box
  end
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '500']
    vb.customize ['modifyvm', :id, '--cpus', '2']
  end
  #config.vm.network 'private_network', type: 'dhcp'
  config.vm.box = 'ubuntu/vivid64'
  config.vm.provision 'shell', path: 'provision/common.sh'
  config.vm.synced_folder "share", "/opt/share"


  config.vm.define 'thedevice' do |thedevice|
    thedevice.vm.hostname = 'thedevice.kaveh.me'
    thedevice.vm.provision 'shell', path: 'provision/thedevice.sh'
    thedevice.vm.network "private_network", ip: "172.28.128.50"
  end


  config.vm.define 'redisqueue' do |redisqueue|
    redisqueue.vm.hostname = 'redisqueue.kaveh.me'
    redisqueue.vm.provision 'shell', path: 'provision/redisqueue.sh'
    redisqueue.vm.network "private_network", ip: "172.28.128.51"
  end


  config.vm.define 'analyser01' do |analyser01|
    analyser01.vm.hostname = 'analyser01.kaveh.me'
    analyser01.vm.provision 'shell', path: 'provision/analyser01.sh'
    analyser01.vm.network "private_network", ip: "172.28.128.52"
  end

end