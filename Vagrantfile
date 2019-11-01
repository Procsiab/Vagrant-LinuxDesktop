# -*- mode: ruby -*-
# vi: set ft=ruby :

dir = Dir.pwd
vagrant_dir = File.expand_path(File.dirname(__FILE__))

Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu1804"
  config.vm.hostname = "ubuntu"
  config.ssh.forward_agent = true
  config.vm.provider :libvirt do |virt|
   virt.graphics_port = 5901
   virt.graphics_ip = '127.0.0.1'
   virt.video_type = 'vga'
   virt.video_vram = 9216
   virt.memory = 2048
   virt.cpus = 2
   virt.cputopology :sockets => '1', :cores => '2', :threads => '1'
   virt.features = ['acpi', 'apic', 'pae' ]
  end

  if File.exists?(File.join(vagrant_dir,'provision','install-desktop.sh')) then
    config.vm.provision :shell, :path => File.join( "provision", "install-desktop.sh" )
  end
  if File.exists?(File.join(vagrant_dir,'provision','install-picoscope.sh')) then
    config.vm.provision :shell, :path => File.join( "provision", "install-picoscope.sh" )
  end
end
