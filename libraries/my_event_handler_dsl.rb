module ChefHandlerExample
  class MyEventHandlerDSL

    def my_helper_method(exception, run_status)
      Chef::Log.warn("MyEventHandlerDSL exception: #{exception.inspect}")
      Chef::Log.warn("MyEventHandlerDSL run_status: #{run_status.formatted_exception}")
    end
  end
end
Chef::Recipe.send(:include, ChefHandlerExample)
