#
# Cookbook Name:: mesos-base
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "yum-utils.noarch" do
  action :install
  flush_cache [ :before ]
end

package 'bind-utils' do
  action :install
end

package "nfs-utils" do
  action :install
  flush_cache [ :before ]
end

