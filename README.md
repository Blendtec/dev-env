dev-env
=======

##required software

*  Install [Vagrant](http://downloads.vagrantup.com)
*  Install [Virtualbox](https://www.virtualbox.org/wiki/Downloads)


##steps to get up and running
```shell
git clone git@github.com:Blendtec/dev-env.git
cd dev-env
sudo chmod +x setup.sh
./setup.sh
vagrant up
```

at this point you should have a running environment that can be accessed  [from the host](http://localhost:8081). 
The only remaining step is to restore your database.  
