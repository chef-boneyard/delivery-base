name 'delivery-base'
maintainer 'Chef Delivery Team'
maintainer_email 'delivery-team@chef.io'
license 'Apache 2.0'
description 'Delivery base cookbook'
long_description 'Sets up the base things for a node to be use in Chef Delivery'

version '0.2.1'

source_url 'https://github.com/chef-cookbooks/delivery-base'
issues_url 'https://github.com/chef-cookbooks/delivery-base/issues'

supports 'ubuntu', '>= 12.04'
supports 'redhat', '>= 6.5'
supports 'centos', '>= 6.5'
supports 'windows'

depends 'push-jobs'
