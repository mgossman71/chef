#
# Cookbook Name:: mesos-base
# Recipe:: docker-run.rb
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "docker" do
  action :install
end

service "docker" do
  action [:enable, :start]
end
