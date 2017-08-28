#
# Cookbook Name:: mesos-base
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package ['kubernetes', 'etcd'] do
  action :install
  flush_cache [ :before ]
end

service 'etcd' do
  action [ :enable, :start ]
end

service 'kube-apiserver' do
  action [ :enable, :start ]
end

service 'kube-controller-manager' do
  action [ :enable, :start ]
end

service 'kube-scheduler' do
  action [ :enable, :start ]
end

