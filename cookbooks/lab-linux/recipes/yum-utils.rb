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

