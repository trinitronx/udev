name             "udev"
maintainer       "Opscode, Inc."
maintainer_email "matt@opscode.com"
license          "Apache 2.0"
description      "udev rules configuration."
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.1"

supports "ubuntu"

depends 'chef-solo-search'
