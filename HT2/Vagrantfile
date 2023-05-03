Vagrant.configure("2") do |config|
    #Creating machine 1
    config.vm.define "wm1" do |wm1|
      wm1.vm.box = "centos/7"
      wm1.vm.hostname = "machine1"
  
      #Configurating Memory and CPUS
      wm1.vm.provider :virtualbox do |v|
        v.memory = 2048
        v.cpus = 2
      end
    end
  
    #Creating App
    config.vm.define "wm2" do |wm2|
      wm2.vm.box = "ubuntu/focal64"
      wm2.vm.hostname = "machine2"
  #    app.vm.network "forwarded_port", guest: 80, host: 8081, host_ip: "127.0.0.1"
  
      #Configurating Memory and CPUS
      wm2.vm.provider :virtualbox do |v|
        v.memory = 2048
        v.cpus = 2
      end
    end
end