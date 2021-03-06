Blendtec.com Development Environment
=======
#Prerequisites

##Software
*  [Git](http://git-scm.com/downloads) (git bash (cygwin) is recommended)
*  [Vagrant](http://downloads.vagrantup.com)
*  [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

##Configuration

###1. SSH keys generated (most likely already there)
```shell
    ssh-keygen -t rsa -C "your_email@example.com"
```
###2. Identities added to ssh-agent
Linux & OS X
```shell
    ssh-add
```
Windows
```shell
    eval `ssh-agent.exe`
    ssh-add ~/.ssh/id_rsa
```



#Up and running

###1. Clone this repo and dependants
```shell
    git clone git@github.com:Blendtec/dev-env.git
    cd dev-env
    git submodule update --init
```

###2. Start vagrant (provisioning takes a while on the initial boot). 
```shell
    vagrant up
```

###3. Connect to the guest machine

```shell
    vagrant ssh
```

###4. Clone repo
```shell
      git clone git@github.com:Blendtec/residential.git /srv/www
	  cd /srv/www
	  git submodule update --init --recursive
	  mkdir -p /srv/www/app/tmp/{cache/{models,persistent,views},logs,sessions,tests}
      chmod -R 777 /srv/www/app/tmp
```

###5. Install certificate
```shell
      cd /srv/www
      arc install-certificate
```
Follow the instructions
*    go to [http://dev.blendtec.com/conduit/token/](http://dev.blendtec.com/conduit/token/) 
*    copy your token
*    paste it in

you should see SUCCESS! Certificate installed. 

###6. Configure Git
```shell
    git config --global user.name "John Doe"
    git config --global user.email johndoe@example.com
```

###7. Configure SSH
Best way that we know so far is to copy a public/private pair into www, as it is shared. Then run the following:
```shell
    cd srv/www
    mv 'id_rsa/id_rsa.pub' ../../home/vagrant/.ssh
    chown 0600 'id_rsa' 
```
Then to test that it works run:
```shell
    ssh -v git@github.com
```

###8. Update your database
using your favorite client connect to localhost:3307
user: root
password: id10t
update restore with latest dump

###9. Copy configs into directory
copy provided config files into www/app/Config

at this point you should have the blendtec environment running accessible [from http://localhost:8081](http://localhost:8081)

Do Work!
