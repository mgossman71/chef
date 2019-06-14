directory "/linux-tools" do
  owner 'root'
  group 'root'
  action :create
end

mount '/linux-tools' do
  device 'synology:/volume1/linux-tools'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end

directory "/web" do
  owner 'root'
  group 'root'
  action :create
end

mount '/web' do
  device 'synology:/volume1/web'
  fstype 'nfs'
  options 'rw'
  action [:mount, :enable]
end
