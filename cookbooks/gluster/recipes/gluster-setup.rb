#
# Cookbook Name:: gluster
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

execute 'brick1lv' do
  command 'lvcreate -L 200G -n brick1lv DataVG'
  action :nothing
end

execute 'xfsformat' do
  command 'mkfs.xfs /dev/mapper/DataVG-brick1lv'
  action :nothing
end

execute 'disk-setup' do
  command 'vgcreate DataVG /dev/sdb'
  notifies :run, 'execute[brick1lv]', :immediately
  notifies :run, 'execute[xfsformat]', :immediately
end
