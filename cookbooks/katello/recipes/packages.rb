#
# Cookbook Name:: katello
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rpm_package 'katello-repos-latest' do
  source 'http://fedorapeople.org/groups/katello/releases/yum/3.2/katello/el7/x86_64/katello-repos-latest.rpm'
  action :install
end

rpm_package 'foreman-release' do
  source 'http://yum.theforeman.org/releases/1.13/el7/x86_64/foreman-release.rpm'
  action :install
end
 
rpm_package 'puppetlabs-release' do
  source 'http://yum.puppetlabs.com/puppetlabs-release-el-7.noarch.rpm'
  action :install
end

rpm_package 'epel-release-latest' do
  source 'http://dl.fedoraproject.org/pub/epel/epel-release-latest-7.noarch.rpm'
  action :install
end

package 'foreman-release-scl' do
  action :install
end

package 'katello' do
  action :install
end
