Blendtec.com Development Environment
=======
#Prerequisites

##Software
*  [Git](http://git-scm.com/downloads) (git bash (cygwin) is recommended)
*  [Vagrant](http://downloads.vagrantup.com)
*  [Virtualbox](https://www.virtualbox.org/wiki/Downloads)

##Configuration

###1. SSH keys generated
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
    ssh-add ~/.ssh/
```



#Up and running

###1. Clone this repo and dependants
```shell
    git clone git@github.com:Blendtec/dev-env.git
    cd dev-env
    ./setup.sh
```
###2. Git Config 
Add your email, name, and push behavior preference in the [git config section](https://github.com/Blendtec/dev-env/blob/master/Vagrantfile#L121) (git bash (cygwin) is recommended) in the vagrantfile. This must match your name and email in phabricator.

```ruby
    :git => {
        :email => 'tdickson@blendtec.com',
        :user => 'Tom Dickson',
        :push_default => 'simple'
    }
```
(you can always update this later with normal git config commands)
if you're on a windows machine without git gitbash/cygwin installed you probably want to manually
go through the commands in setup.sh substituting commands as necessary until I add a batch file. 

###3. Start vagrant (provisioning takes a while on the initial boot). 
```shell
    vagrant up
```
at this point you should have the blendtec environment running accessible [from the host](http://localhost:8081)

###4. Connect to the guest machine

```shell
    vagrant ssh
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

###6. Update your database
using your favorite client connect to localhost:3307
user: root
password: id10t
update restore with latest dump

Do Work!
