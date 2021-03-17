Chef.event_handler do
  on :run_failed do |exception, run_status|
    ChefHandlerExample::MyEventHandlerDSL.new.my_helper_method(exception, run_status)
  end
end

ruby_block 'fail' do
  block { raise 'Epic Fail' }
end

