# Configure Rundeck projects from data bag

# create projects from data bag items with api calls
data_bag(node['rundeck']['projects_data_bag']).each do |project|
  # TODO create projects
  # uri = URI('http://www.example.com/search.cgi')
  # res = Net::HTTP.post_form(uri, 'q' => 'ruby', 'max' => '50')
  # puts res.body
end
