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

yum_package %w(docker-ce) do
  flush_cache [ :before ]
  action [ :install ]
end

service 'docker' do
  action [ :enable, :start ]
end

service 'firewalld' do
  action [ :disable, :stop ]
end
