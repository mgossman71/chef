cron 'chef-client' do
  minute '*/15'
  command '/usr/bin/chef-client'
end

