# Ensure `git` package is installed
package 'git' do
  action :install
end

# Create the git user
user "deploy" do
  username "deploy"
  comment "GIT receive user"
  shell "/bin/false"
  home "/srv/git"
  supports manage_home: true
  action :create
end

# Create a bin dir in the git user home
directory "/srv/git/bin" do
  owner "deploy"
  group "deploy"
  mode 0755
  action :create
end