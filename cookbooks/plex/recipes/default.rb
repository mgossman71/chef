#
# Cookbook Name:: plex
# Recipe:: default
#
# Copyright 2017, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

# /mnt/Movies
directory "/mnt/Movies" do
  owner 'root'
  group 'root'
  action :create
end
mount '/mnt/Movies' do
  device 'synology:/volume1/Movies'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

# /mnt/TV-Shows
directory "/mnt/TV-Shows" do
  owner 'root'
  group 'root'
  action :create
end
mount '/mnt/TV-Shows' do
  device 'synology:/volume1/TV-Shows'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

# /mnt/TV-Shows1
directory "/mnt/TV-Shows1" do
  owner 'root'
  group 'root'
  action :create
end
mount '/mnt/TV-Shows1' do
  device 'synology:/volume1/TV-Shows1'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

# # /docker-work/plex
# directory "/docker-work" do
#   owner 'root'
#   group 'root'
#   action :create
# end
# directory "/docker-work/plex" do
#   owner 'root'
#   group 'root'
#   action :create
# end

# /docker-work/sabnzb
directory "/mnt/sabnzb" do
  owner 'root'
  group 'root'
  action :create
end
mount '/mnt/sabnzb' do
  device 'synology:/volume1/sabnzb'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end
