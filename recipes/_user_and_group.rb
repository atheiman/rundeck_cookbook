group node['rundeck']['group']
user node['rundeck']['user'] do
  action :create
  group node['rundeck']['group']
end
