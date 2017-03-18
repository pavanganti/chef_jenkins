#
# Cookbook:: jenkins
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'jenkins::default' do
  describe command('wget -O - http://localhost:8080')do
    its(:stdout) {should match(/Jenkins/)}

end
