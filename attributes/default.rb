# Rundeck requires jdk 1.7+
default['java']['install_flavor'] = 'openjdk'
default['java']['jdk_version'] = '7'

default['rundeck']['user'] = 'rundeck'
default['rundeck']['group'] = 'rundeck'
default['rundeck']['mysql']['instance'] = 'rundeck'
default['rundeck']['mysql']['data_dir']['mount_root'] = '/mnt/data/mysql/'
default['rundeck']['mysql']['data_dir']['mount_device'] = '/dev/sdb1'
default['rundeck']['mysql']['data_dir']['mount_fstype'] = 'ext4'
default['rundeck']['mysql']['pass'] = 'MYSQLPASS'
default['rundeck']['projects_data_bag'] = 'rundeck-projects'
