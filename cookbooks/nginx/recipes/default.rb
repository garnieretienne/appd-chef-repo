# Ensure `nginx` package is installed
package 'nginx' do
  action :install
end

# Ensure nginx service is configured to be started at boot
service 'nginx' do
  action :enable
end

# Ensure 'nginx' service is running
service 'nginx' do
  action :start
end