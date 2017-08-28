#
# Cookbook Name:: openstack
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

rpm_package 'rdoproject' do
#  source 'http://www.rdoproject.org/repos/rdo-release.rpm'
  source 'https://repos.fedorapeople.org/repos/openstack/openstack-liberty/rdo-release-liberty-5.noarch.rpm'
  action :install
end

package 'openstack-packstack' do
  action :install
end

