# Ensure `sudo` package is installed
package 'sudo' do
  action :install
end

# Ensure 'sysop' group can execute sudo command with no password
template "/etc/sudoers.d/sysop" do
  action :create
end