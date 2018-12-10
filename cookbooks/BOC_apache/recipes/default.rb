#
# Cookbook:: BOC_apache
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.
#
#
package "httpd" do
	action :install
end

package "php-gd" do
	action :install
end

package "apache2" do
	action :install
end

service "httpd" do
        action [ :enable, :restart ]
end

cookbook_file "/home/setup.sh" do
	source "setup.sh"
end
