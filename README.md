dev-env
=======

##required software

*  [Git](http://git-scm.com/downloads) (git bash (cygwin) is recommended)
*  [Vagrant](http://downloads.vagrantup.com)
*  [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

##Prerequisites
*  SSH keys generated
```shell
    ssh-keygen -t rsa -C "your_email@example.com"
```
*  Identities added to ssh-agent
```shell
    ssh-add
```
*  Add your email, name, and push behavior preference in the git config in the vagrantfile. (you can always update this later with
normal git config commands)


##steps to get up and running

#1. Clone this repo and dependants
```shell
    git clone git@github.com:Blendtec/dev-env.git
    cd dev-env
    chmod +x setup.sh
    ./setup.sh
```
if you're on a windows machine without git gitbash/cygwin installed you probably want to manually
go through the commands in setup.sh substituting commands as necessary.

#2. Start vagrant (this will take a little while the first while the provisioner runs)
```shell
    vagrant up
```
at this point you should have the blendtec environment running accessible [from the host](http://localhost:8081)

#3. Connect to the guest machine

```shell
    vagrant ssh
```

#4. Install certificate
```shell
      cd /srv/www
      arc install-certificate
```

#5. Follow the instructions
go to [http://dev.blendtec.com/conduit/token/](http://dev.blendtec.com/conduit/token/) copy your token
paste it in


Do Work!
