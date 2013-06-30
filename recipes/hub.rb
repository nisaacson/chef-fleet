include_recipe "fleet::default"
bash "make_hub_directory" do
  code "mkdir -p #{node[:web][:home]}/fleet/hub"
end

service "fleet-hub-service" do
  provider Chef::Provider::Service::Upstart
  supports :restart => true, :start => true, :stop => true
end

template "fleet-hub-service.upstart.conf" do
  path "/etc/init/fleet-hub-service.conf"
  source "fleet-hub-service.upstart.conf.erb"
  owner "root"
  group "root"
  mode "0644"
  notifies :restart, resources(:service => "fleet-hub-service")
end

service "fleet-hub-service" do
  action [:enable, :start]
end
