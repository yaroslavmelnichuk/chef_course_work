current_dir = File.dirname(__FILE__)
log_level                 :info
log_location              STDOUT
node_name                 "testlabdev"
client_key                "#{current_dir}/testlabdev.pem"
chef_server_url           "https://chef-server/organizations/testcheflab"
cookbook_path             ["#{current_dir}/../cookbooks"]
