cookbook_file '/etc/chef/my_event_handler.rb' do
  source 'my_event_handler.rb'
  action :create
end

chef_handler 'ChefHandlerExample::MyEventHandler' do
  source '/etc/chef/my_event_handler.rb'
  arguments my_config_setting: 'bar'
  action :enable
end

ruby_block 'fail' do
  block { raise 'Epic Fail' }
end
