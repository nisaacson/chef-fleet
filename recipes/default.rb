#
# Cookbook Name:: fleet
# Recipe:: default
#
# Copyright (C) 2013 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#
include_recipe "build-essential"
include_recipe "tabrific-web-user::default"
include_recipe "lowport-node::default"
bash "install_fleet" do
  user 'root'
  code "npm install -g fleet"
end

