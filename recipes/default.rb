#
# Cookbook Name:: tfly-dev-setup
# Recipe:: default
#
# Copyright 2014, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'change default grails version' do
  user node['current-user']
  command "cd /usr/local/Cellar && git checkout 9312992 /usr/local/Library/Formula/grails.rb"
end

execute 'change default thrift version' do
  user node['current-user']
  command "cd /usr/local/Cellar && git checkout eccc96b /usr/local/Library/Formula/thrift.rb"
end
