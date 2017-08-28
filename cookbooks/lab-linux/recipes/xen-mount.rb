directory "/xen" do
  owner 'root'
  group 'root'
  action :create
end

mount '/xen' do
  device 'synology:/volume1/Xen'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end
