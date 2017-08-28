#
# Cookbook Name:: mesos-base
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "epel-release" do
  action :install
  flush_cache [ :before ]
end

