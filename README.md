# chef-hello-httpd
Includes a cookbook for running a simple "hello world" website on a chef client node.
### Getting started
There's a few things you have to do in order to make things work the way you want. 
**Prerequisites**
* CentOS 7.2 node with "centos" user and `sudo` privileges.
* ChefDK installed on the node. 
* A Chef Org with your cookbook ("hello_httpd")
* knife.rb config file for the target Chef Org (not included in this repo).
* chef-client installed on the node.
* Public IP ADDRESS for the node. 
* IDENTITY .pem file for the node.  
### Bootstrap the node
On your workstation: run the knife bootstrap command against the node:  
`knife bootstrap ADDRESS --ssh-user centos --sudo --identity-file IDENTITY --node-name node1-centos --run-list 'recipe[hello_httpd]'`  
This connects the chef-client on the node to your chef org. This only works if knife is able to find your Org's knife.rb config file on your workstation. 
### Start chef client on boot
On the node, add an entry to root's crontab:  
`(crontab -l 2>/dev/null; echo "@reboot /usr/bin/chef-client") | crontab -`  
This causes chef-client to run whenever the node starts or reboots. This will connect it to the org configured during the bootstrap.  

**This would be a good time to validate the chef configurations you have made, and register the node Instance as an AMI.** 
