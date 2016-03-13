# Install Rundeck

# rundeck depends on java
include_recipe 'java::default'

# add yum repo
remote_file '/tmp/rundeck-latest.rpm' do
  source 'http://repo.rundeck.org/latest.rpm'
end
rpm_package 'rundeck' do
  source '/tmp/rundeck-latest.rpm'
  action :upgrade
end

# install with yum
package 'rundeck' do
  notifies :start, 'service[rundeckd]', :delayed
end

service 'rundeckd' do
  action :enable
  supports :restart => true
end

# create each project from data bag items
begin
  include_recipe 'rundeck::_projects' unless data_bag(node['rundeck']['projects_data_bag']).empty?
rescue Net::HTTPServerException, Chef::Exceptions::InvalidDataBagPath
end
