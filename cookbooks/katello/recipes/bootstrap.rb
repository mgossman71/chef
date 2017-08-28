#
# Cookbook Name:: katello
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

package "subscription-manager" do
  action :install
end

rpm_package 'katello-server' do
  source 'http://katello/pub/katello-ca-consumer-latest.noarch.rpm'
  action :install
end

