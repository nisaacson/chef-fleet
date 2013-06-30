name             'fleet'
maintainer       'Noah Isaacson'
maintainer_email 'YOUR_EMAIL'
license          'All rights reserved'
description      'Installs/Configures fleet'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.3'

depends "chef-node-web-user"
depends "lowport-node"
depends "build-essential"
