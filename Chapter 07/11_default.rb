# File: recipes/default.rb
package 'apache2' do
  action :install
end

service 'apache2' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<h1>Welcome to Apache Server!</h1>'
  owner 'www-data'
  group 'www-data'
  mode '0644'
end
