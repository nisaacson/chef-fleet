# fleet cookbook

Set up a fleet hub or drone to run as an upstart service.

# Requirements

The following cookbooks are required

* tabrific-web-user - available from the private tabrific repo on bitbucket
* lowport-node - available at [https://github.com/nisaacson/lowport-node](https://github.com/nisaacson/lowport-node)
* build-essential


# Usage

To use this when provisioning a chef node, include the `fleet::drone` or `fleet::hub` recipe.

To test out the cookbook you can use vagrant to create a virtual machine with a single hub and drone running. To instiate the virtual machine, execute in the root directory of this project

```bash
# setup the virtual machine
vagrant up
# login to the virtual machine via ssh
vagrant ssh
# make sure fleet is running. You should see a process for the hub and another for the drone
ps -ef | grep node

# try to connect to the hub, assuming you used the default attributes in ./attributes/default.rb
fleet-ps --hub=localhost:3000 --secret=beepboop
```

# Attributes

You must specify the fleet `port`, `host`, and `secret`. Note that host should be set to localhost when using the `fleet::hub` recipe. When using the `fleet::drone` recipe, `host` should be the host address of a valid fleet hub

```ruby
node.default[:fleet][:port] = 3000
node.default[:fleet][:host] = 'localhost'
node.default[:fleet][:secret] = 'beepboop'
```

# Recipes

* fleet::drone start running a fleet drone
* fleet::hub
# Author

Author:: Noah Isaacson
