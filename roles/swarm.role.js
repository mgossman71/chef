{
  "name": "swarm",
  "description": "Docker linux servers",
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
    "recipe[lab-linux::nfs-utils]",
    "recipe[lab-linux::open-vm-tools]",
    "recipe[lab-linux::resolver]",
    "recipe[mesos-base::docker-run]",
    "recipe[lab-linux::epel]",
    "recipe[lab-linux::swarm-packages]",
    "recipe[lab-linux::linux-tools-mount]"
  ],
  "env_run_lists": {

  }
}
