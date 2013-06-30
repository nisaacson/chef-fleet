# fleet cookbook

Set up a fleet hub or drone to run as an upstart service.

# Requirements

The following cookbooks are required

* tabrific-web-user - available from the private tabrific repo on bitbucket
* lowport-node - available at [https://github.com/nisaacson/lowport-node](https://github.com/nisaacson/lowport-node)
* build-essential


# Usage

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
