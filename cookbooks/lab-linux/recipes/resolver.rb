#
# Cookbook Name:: lab-linux
# Recipe:: resolver.rb
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

template '/etc/resolv.conf' do
  source 'resolv.erb'
  owner 'root'
  group 'root'
  mode '0644'
end

