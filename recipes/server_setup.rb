package 'apache2'

template '/var/www/html/index.html' do
  source  'index.html.erb'
  variables (
    :name => 'Peeter'
  )
  action :create
end

service 'apache2' do
  action [ :enable, :start ]
end
