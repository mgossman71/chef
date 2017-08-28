#
# Cookbook Name:: lab-linux
# Recipe:: open-vm-tools
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "open-vm-tools" do
  action :install
  flush_cache [ :before ]
end

