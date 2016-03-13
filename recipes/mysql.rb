# Install MySQL and configure for Rundeck

include_recipe 'rundeck::_user_and_group'

rundeck_data_dir = node['rundeck']['mysql']['data_dir']['mount_root'] +
                   node['rundeck']['mysql']['instance']
directory rundeck_data_dir do
  node['rundeck']['user']
  recursive true
  action :create
end

mount rundeck_data_dir do
  device node['rundeck']['mysql']['data_dir']['mount_device']
  fstype node['rundeck']['mysql']['data_dir']['mount_fstype']
  action [:mount, :enable]
end

mysql_service node['rundeck']['mysql']['instance'] do
  run_user node['rundeck']['user']
  initial_root_password node['rundeck']['mysql']['pass']
  port '3306'
  data_dir rundeck_data_dir
  action [:create, :start]
end
