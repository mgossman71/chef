#
# Cookbook Name:: lab-linux
# Recipe:: selinux.rb
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template '/etc/selinux/config' do
  source 'selinux.erb'
  owner 'root'
  group 'root'
  mode '0644'
end
