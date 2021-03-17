module ChefHandlerExample
  class MyEventHandler < Chef::Handler
    attr_reader :config
    def initialize(config = {})
      @config = config
      @config[:my_config_setting] ||= 'foo'
      @config
    end

    def report
      Chef::Log.warn("MyEventHandler config: #{@config.inspect}")
      Chef::Log.warn("MyEventHandler exception: #{exception.inspect}")
      Chef::Log.warn("MyEventHandler run_status: #{run_status.formatted_exception}")
    end
  end
end
Chef::Recipe.send(:include, ChefHandlerExample)
