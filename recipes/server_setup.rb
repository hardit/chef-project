package 'apache2'

file '/var/www/html/index.html' do
  content "<h1> Hello, chef world!</h1>
  <h2>IPADDRESS: #{node['ipaddress']}</h2>
  <h2>HOSTNAME: #{node['hostname']}</h2>
  "
end

service 'apache2' do
  action [ :enable, :start ]
end
