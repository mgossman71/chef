#
# Cookbook:: docker
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

# execute 'docker_repo' do
#   command ' yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo'
# end

# yum_repository 'docker' do
#   description "docker-ce repo"
#   baseurl 'https://download.docker.com/linux/centos/docker-ce.repo'
# end
cookbook_file '/usr/lib/systemd/system/docker.service' do
  source 'docker.service'
  owner 'root'
  group 'root'
  mode '644'
  action :create
  notifies :stop, 'service[docker]', :immediately
  notifies :run, 'execute[systemctl_daemon_reload]', :immediately
  notifies :start, 'service[docker]', :immediately
end

execute 'systemctl_daemon_reload' do
  command 'systemctl daemon-reload'
end

yum_package %w(docker-ce git java-1.8.0-openjdk.i686) do
  flush_cache [ :before ]
  action [ :install ]
end

service 'docker' do
  action [ :enable, :start ]
end

service 'firewalld' do
  action [ :disable, :stop ]
end

%w[ /mnt/Movies /mnt/TV-Shows /mnt/TV-Shows1 /mnt/sabnzb ].each do |path|
  directory path do
    owner 'root'
    group 'root'
  end
end

mount '/mnt/Movies' do
  device 'synology:/volume1/Movies'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

mount '/mnt/TV-Shows' do
  device 'synology:/volume1/TV-Shows'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

mount '/mnt/TV-Shows1' do
  device 'synology:/volume1/TV-Shows1'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

mount '/mnt/sabnzb' do
  device 'synology:/volume1/sabnzb'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end
