# Ensure `nginx` package is installed
package 'nginx' do
  action :install
end

service 'nginx' do
  action :enable
end