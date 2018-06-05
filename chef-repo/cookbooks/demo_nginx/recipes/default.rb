require_recipe "apt"

package 'vim'
package 'tree'
package 'curl'

package 'nginx' do
  action :install
end

service 'nginx' do 
  action [:enable, :start]
end

cookbook_file "/var/www/html/index.html" do
  source "index.html"
  mode "0644"
end

template "/etc/nginx/nginx.conf" do
  source "nginx.conf.erb"
  notifies :reload, "service[nginx]"
end

