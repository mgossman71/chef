#
# Cookbook Name:: mesos-base
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

#package "gcc" do
#  action :install
#  flush_cache [ :before ]
#end

#package "make" do
#  action :install
#  flush_cache [ :before ]
#end

#package "patch" do
#  action :install
#  flush_cache [ :before ]
#end

package "dkms" do
  action :install
  flush_cache [ :before ]
end

#package "qt" do
#  action :install
#  flush_cache [ :before ]
#end

#package "libgomp" do
#  action :install
#  flush_cache [ :before ]
#end

#package "kernel-headers" do
#  action :install
#  flush_cache [ :before ]
#end

package "kernel-devel" do
  action :install
  flush_cache [ :before ]
end

#package "fontforge" do
#  action :install
#  flush_cache [ :before ]
#end

#package "bind-utils" do
#  action :install
#  flush_cache [ :before ]
#end

#package "glibc-headers" do
#  action :install
#  flush_cache [ :before ]
#end

#package "glibc-devel" do
#  action :install
#  flush_cache [ :before ]
#end

bash "yum groupinstall Development tools" do
  user "root"
  group "root"
  code <<-EOC
  yum groupinstall "Development tools" -y
  EOC
  not_if "yum grouplist installed | grep 'Development tools'"
end

package "VirtualBox-5.1" do
  action :remove
  flush_cache [ :before ]
end

package "VirtualBox-5.0" do
  action :install
  flush_cache [ :before ]
end

package "VirtualBox-4.3" do
  action :remove
  flush_cache [ :before ]
end


