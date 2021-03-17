name 'chef_handler_example'

default_source :supermarket

run_list 'chef_handler_example::handler_dsl'

cookbook 'chef_handler_example', path: '../'
