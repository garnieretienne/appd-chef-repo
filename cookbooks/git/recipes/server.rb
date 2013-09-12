# Ensure `git` package is installed
package 'git' do
  action :install
end

# Create the git user
user "deploy" do
  username "deploy"
  comment "GIT receive user"
  shell "/usr/bin/git-shell"
  home "/srv/git"
  supports manage_home: true
  action :create
end

# Create the ssh dir
directory "/srv/git/.ssh" do
  owner "deploy"
  group "deploy"
  mode 0775
  action :create
end