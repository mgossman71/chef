template '/etc/openstack-dashboard/local_settings' do
  source 'local_settings.py.erb'
  owner 'apache'
  group 'apache'
  mode '0640'
end
