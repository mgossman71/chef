#
# Cookbook:: k8s
# Recipe:: master
#
# Copyright:: 2017, The Authors, All Rights Reserved.

cookbook_file '/root/k8s-svc-restart.sh' do
  source 'k8s-svc-restart.sh'
  mode '0744'
  owner 'root'
  group 'root'
  action :create
end

cookbook_file '/etc/etcd/etcd.conf' do
  source 'etcd.conf'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

cookbook_file '/etc/kubernetes/apiserver' do
  source 'apiserver'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
  notifies :start, 'service[etcd]', :immediately
  # notifies :run, 'execute[etcdctl-mkdir]', :immediately
end

service "etcd" do
  action [:nothing]
end

execute 'etcdctl-mkdir' do
  command 'etcdctl mkdir /kube-centos/network'
  action [:nothing]
  notifies :run, 'execute[etcdctl-mk]', :immediately
end

execute 'etcdctl-mk' do
  command 'etcdctl mk /kube-centos/network/config "{ \"Network\": \"172.30.0.0/16\", \"SubnetLen\": 24, \"Backend\": { \"Type\": \"vxlan\" } }"'
  action [:nothing]
end

cookbook_file '/etc/sysconfig/flanneld' do
  source 'flanneld'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

service "etcd" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "kube-apiserver" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "kube-controller-manager" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "kube-scheduler" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "flanneld" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

execute 'rmflag' do
  command 'rm /tmp/service-restart.flg'
  only_if { File.exist?("/tmp/service-restart.flg") }
end
