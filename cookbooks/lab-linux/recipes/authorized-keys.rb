#
# Cookbook Name:: lab-linux
# Recipe:: authorized_keys.rb
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/root/.ssh' do
  owner 'root'
  group 'root'
  mode '0700'
  action :create
end

template '/root/.ssh/authorized_keys' do
  source 'authorized_keys.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

