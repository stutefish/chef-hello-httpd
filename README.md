# chef-hello-httpd
Includes a cookbook for running a simple "hello world" website on a chef client node.
---
### Bootstrapping the Node
This node should connect to a (notional) Chef org on boot. 
**Prerequisites**
* User with `sudo` privileges
* ChefDK installed on the node. 
* chef-client installed on the node.
---
### Procedure
1. Create `/etc/chef` on the node.
2. Create `/etc/chef/client.rb` (included in this repo)
**YOU ARE HERE**
