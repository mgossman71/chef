#
# Cookbook Name:: openstack
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service 'firewalld' do
  action [ :stop, :disable ]
end

service 'NetworkManager' do
  action [ :stop, :disable ]
end

service 'network' do
  action [ :start, :enable ]
end
