dev-env
=======

##required software

*  [Git](http://git-scm.com/downloads) (git bash (cygwin) is recommended)
*  [Vagrant](http://downloads.vagrantup.com)
*  [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

##Prerequisites
#1. SSH keys generated
```shell
    ssh-keygen -t rsa -C "your_email@example.com"
```
#2. Identities added to ssh-agent
Linux & OS X
```shell
    ssh-add
```
Windows
```shell
    eval `ssh-agent.exe`
    ssh-add ~/.ssh/
```
#3.  Add your email, name, and push behavior preference in the git config in the vagrantfile. (you can always update this later with normal git config commands)


##steps to get up and running

#1. Clone this repo and dependants
```shell
    git clone git@github.com:Blendtec/dev-env.git
    cd dev-env
    ./setup.sh
```
if you're on a windows machine without git gitbash/cygwin installed you probably want to manually
go through the commands in setup.sh substituting commands as necessary.

#2. Start vagrant (provisioning takes a while on the initial boot). 
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
