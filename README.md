# chef-hello-httpd
Includes a cookbook for running a simple "hello world" website on a chef client node.
---
### Bootstrapping the Node
This node should connect to a Chef org on boot.  
**Prerequisites**
* CentOS 7.2 node with "centos" user and `sudo` privileges.
* ChefDK installed on the node. 
* knife.rb config file for the target Chef Org (not included in this repo).
* chef-client installed on the node.
* Public IP ADDRESS for the node. 
* IDENTITY .pem file for the node.  
---
This prepares the node for further chef client work. 
