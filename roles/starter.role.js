{
  "name": "starter",
  "description": "An example Chef role",
  "json_class": "Chef::Role",
  "default_attributes": {

  },
  "override_attributes": {
    "starter_name": "mark gossman"
  },
  "chef_type": "role",
  "run_list": [
    "recipe[starter]"
  ],
  "env_run_lists": {

  }
}
