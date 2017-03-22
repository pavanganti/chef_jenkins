#
#Cookbook:: jenkins_server
#Recipe:: default
#wget -q -O - https://pkg.jenkins.io/debian/jenkins-ci.org.key
#include_recipe 'apt::default'
# include_recipe 'yum'

# apt_repository 'oracle' do
#   uri  'http://yum.oracle.com/public-yum-release.repo'
#
# end
yum_package 'java-1.7.0-openjdk' do
  action :install
end

yum_repository 'jenkins.repo' do
  baseurl "https://pkg.jenkins.io/redhat/"
  gpgkey 'http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key'
end

yum_package 'jenkins' do
  action :install
end

service 'jenkins' do
  action :start
end

# apt_repository 'jenkins' do
#   uri  'http://pkg.jenkins.io/debian-stable'
#   distribution 'binary/'
#   key  'https://pkg.jenkins.io/debian/jenkins-ci.org.key'
#
# end

# package 'jenkins' do
#   action :remove
# end
#
# package 'jenkins' do
#   action :install
# end



#
# Copyright:: 2017, The Authors, All Rights Reserved.
