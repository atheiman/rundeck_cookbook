# Install standalone Rundeck (rundeckd and mysql on single node)

group node['rundeck']['group']
user node['rundeck']['user'] do
  action :create
  group node['rundeck']['group']
end

include_recipe 'rundeck::mysql'
include_recipe 'rundeck::rundeck'
