#
# Cookbook:: jenkins
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

include_recipe 'apt::default'
include_recipe 'java'

apt_repository 'jenkins' do
  uri  'http://pkg.jenkins.io/debian-stable'
  distribution 'binary/'
  key  'https://pkg.jenkins.io/debian/jenkins-ci.org.key'

end

package 'jenkins' do
  action :remove
end

package 'jenkins'
