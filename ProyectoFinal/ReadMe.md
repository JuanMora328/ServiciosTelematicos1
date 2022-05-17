<h1> ¿Como se realizó el proyecto? </h1>
<h5> 1. En el simbolo del sistema ubicandonos dentro de la carpeta inicializamos el vagrant con el comando de:</h5>
<p>vagrant init </p>
<h5> 2. Configuramos el archivo de Vagrantfile, con la siguiente configuración:</h5>
<p> Vagrant.configure("2") do |config|

  if Vagrant.has_plugin?("vagrant-vbguest")
      config.vbguest.auto_update = false 
    end

  config.vm.define :loadbalancer do |loadbalancer|
  loadbalancer.vm.box = "bento/centos-7.9"
  loadbalancer.vm.network :private_network, ip: "192.168.50.10"
  loadbalancer.vm.hostname = "loadbalancer"
  end

  config.vm.define :servidor1 do |servidor1|
  servidor1.vm.box = "bento/centos-7.9"
  servidor1.vm.network :private_network, ip: "192.168.50.20"
  servidor1.vm.hostname = "servidor1"
  end

  config.vm.define :servidor2 do |servidor2|
  servidor2.vm.box = "bento/centos-7.9"
  servidor2.vm.network :private_network, ip: "192.168.50.30"
  servidor2.vm.hostname = "servidor2"
  end

  end </p>
  
  ---------------------------------------------------------------------------------------------------------------------
  <h5> 3. Levantamos todas las maquinas e ingresamos a ellas:</h5>
  <p> vagrant up </p>
  <p> vagrant ssh (nombre de cada maquina) </p>
  
  <h2> Para las maquinas de Servidor 1 y Servidor 2  debemos ejecutar los siguientes comandos:</h2>
  <p> yum install vim httpd -y </p>
  
  <h5> Creamos un index.html dentro del directorio /var/www/html/ <h5>
  <p> Una vez terminado, guardamos el archivo presionando ESC, luego :wq </p>
  
  <h5> Para terminar la configuración de los servidores reiniciamos el servicio de httpd, con el comando: </h5>
  <p> service httpd restart </p>
  
  ----------------------------------------------------------------------------------------------------------------------
  <h2> Para la maquina de loadbalancer  realizamos las siguientes configuraciones <h2>
    
    
