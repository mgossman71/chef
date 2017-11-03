#
# Cookbook:: k8s
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/etc/yum.repos.d/virt7-docker-common-release.repo' do
  source 'virt7-docker-common-release.repo'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

yum_package %w(kubernetes etcd flannel)  do
  action :install
end

cookbook_file '/etc/kubernetes/config' do
  source 'kubernetes-config'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

service "selinux" do
  action [:disable, :stop]
end

service "iptables" do
  action [:disable, :stop]
end

service "firewalld" do
  action [:disable, :stop]
end
