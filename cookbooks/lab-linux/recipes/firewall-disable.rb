#
# Cookbook Name:: lab-linux
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

service 'firewalld' do
  action [ :stop, :disable ]
end
