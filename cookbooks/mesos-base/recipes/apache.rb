#
# Cookbook Name:: mesos-base
# Recipe:: apache.rb
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#install Apache

package "httpd" do
  action :install
end
