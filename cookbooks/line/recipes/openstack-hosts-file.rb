append_if_no_line "hosts entry" do
  path "/etc/hosts"
  line "192.168.100.13 openstack openstack.gozz.domain"
end
