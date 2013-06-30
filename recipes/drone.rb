include_recipe "fleet::default"
bash "make_drone_directory" do
  code "mkdir -p #{node[:web][:home]}/fleet/drone"
end

service "fleet-drone-service" do
  provider Chef::Provider::Service::Upstart
  supports :restart => true, :start => true, :stop => true
end

template "fleet-drone-service.upstart.conf" do
  path "/etc/init/fleet-drone-service.conf"
  source "fleet-drone-service.upstart.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, resources(:service => "fleet-drone-service")
end

service "fleet-drone-service" do
  action [:enable, :start]
end
