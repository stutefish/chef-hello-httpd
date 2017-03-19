#
# Cookbook Name:: hello_httpd
# Recipe:: default
#

package 'httpd'

service 'httpd' do
  action [:enable, :start]
end

template '/var/www/html/hello' do
  source 'hello.erb'
end

# Copyright (c) 2017 The Authors, All Rights Reserved.
