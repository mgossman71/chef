#
# Cookbook Name:: mesos-base
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

directory '/mesos' do
  owner 'root'
  group 'root'
  mode '0664'
  action :create
end

mount '/mesos' do
  device 'synology:/volume1/mesos'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

# yum_package "java" do
#   flush_cache [ :before ]
#   action :install
# end

package "docker" do
  action :install
end

service "docker" do
  action [:enable, :start]
end
