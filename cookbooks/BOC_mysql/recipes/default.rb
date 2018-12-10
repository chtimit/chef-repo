#
# Cookbook:: BOC_mysql
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
package 'mariadb' do
	action :install
end

cookbook_file "/home/setup.sh" do
	source "setup.sh"
end
