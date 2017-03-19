#
# Cookbook:: jenkins
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

#wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key
remote_file '/tmp/pkg.jenkins.io.key' do
  source 'https://pkg.jenkins.io/debian/jenkins-ci.org.key'
  notifies :run, 'execute[apt-key add /tmp/pkg.jenkins.io.key]', :immediately

end

#| sudo apt-key add -
execute 'apt-key add /tmp/pkg.jenkins.io.key' do
  action :nothing
end
#sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
file '/etc/apt/sources.list.d/jenkins.list' do
  content 'deb http://pkg.jenkins.io/debian-stable binary/'
  notifies :run, 'execute[apt-get update]', :immediately
end
#sudo apt-get update
execute 'apt-get update' do
  action :nothing
end

package 'jenkins'
