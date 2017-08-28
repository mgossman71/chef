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
