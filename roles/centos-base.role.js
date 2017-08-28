{
  "name": "centos-base",
  "description": "Centos linux base tools",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {

  },
  "chef_type": "role",
  "run_list": [
    "recipe[lab-linux::selinux]",
    "recipe[lab-linux::authorized-keys]",
    "recipe[lab-linux::cron]",
    "recipe[lab-linux::wget]",
    "recipe[lab-linux::utils]",
    "recipe[lab-linux::open-vm-tools]",
    "recipe[lab-linux::linux-tools-mount]"
  ],
  "env_run_lists": {

  }
}
