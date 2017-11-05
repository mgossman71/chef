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

cookbook_file '/etc/kubernetes/kubelet' do
  source 'kubelet'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

cookbook_file '/etc/sysconfig/flanneld' do
  source 'flanneld_client'
  mode '0644'
  owner 'root'
  group 'root'
  action :create
end

service "kube-proxy" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "kubelet" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "flanneld" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

service "docker" do
  action [:enable, :restart]
  only_if { File.exist?("/tmp/service-restart.flg") }
end

execute 'rmflag' do
  command 'rm /tmp/service-restart.flg'
  only_if { File.exist?("/tmp/service-restart.flg") }
end


# kubectl config set-cluster default-cluster --server=http://k8s001:8080
# kubectl config set-context default-context --cluster=default-cluster --user=default-admin
# kubectl config use-context default-context
