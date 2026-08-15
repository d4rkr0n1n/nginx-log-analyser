Vagrant.configure("2") do |config|
  config.vm.box = "hashicorp/precise64"
  config.vm.box_version = "1.1.0"
  config.vm.provision "file", source: "logs/nginx-access.log", destination: "/home/vagrant/nginx-access.log"
  config.vm.provision "file", source: "scripts/script.sh", destination: "/home/vagrant/script.sh"
  config.vm.provision "shell", inline: "chmod +x /home/vagrant/script.sh"
end
