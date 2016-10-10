chef_workstation
================

Share a Chef workstation between users for consistancy.  No more WOMM!

Base
----
* Ubuntu 14.04

Installs
--------
* bundler
* chefdk
* chef-provisioning-vsphere
* aws cli

How to use this image
---------------------

*Example*

```
docker run -it -v /path/to/cookbooks:/chef -v /path/to/configs_and_keys:/root/.chef/ heathsnow/chef_workstation
```

Now you can do the things!  Such as. . .
```ruby
# Bundler
> cd /chef/my_cookbook
> bundle install
# Knife
> knife environment show dev -c /chef/knife.rb
```

Contributing
------------

1. Fork the repository on Github
2. Create a named feature branch (i.e. `add-new-install`)
3. Write your change
5. Run the tests, ensuring they all pass
6. Submit a Pull Request

## Author

Author:: Heath Snow (heathsnow@gmail.com)


