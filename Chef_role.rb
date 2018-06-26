##Web Role

{
	"name": ”web",
	"description": ”Role for our web sever nodes for wordpress application",
	"json_class": "Chef::Role",
	"default_attributes": {
		
		},
	"override_attributes": {
		},
	"chef_type": "role",
	"run_list": [
		"recipe[apache2]",
		"recipe[apache2::websites]",
		"role[monitoring]"
		],
	"env_run_lists": {
	}
}

## Database role
{
	"name": ”database",
	"description": ”Database Servers For Our Wordpress Application ",
	"json_class": "Chef::Role",
	"default_attributes": {
		},
	"override_attributes": {
		},
	"chef_type": "role",
	"run_list": [
		"recipe[postgreSQL]",
		"recipe[postgreSQL::create_databases]",
		"role[monitoring]"
		],
	"env_run_lists": {
		}
}

## Haproxy Role

{
	"name": ”haproxy",
	"description": ”Haproxy load balancer for webnodes ",
	"json_class": "Chef::Role",
	"default_attributes": {
		},
	"override_attributes": {
		},
	"chef_type": "role",
	"run_list": [
		"recipe[haproxy]",
		"role[monitoring]"
		],
	"env_run_lists": {
	}
}

## Monitoring Role [Common in All] role[monitoring] included in the db, haproxy, and web roles.
{
"name": ”monitoring",
"description": ”Recipes that make up the monitoring stack required for all nodes",
"json_class": "Chef::Role",
"default_attributes": {
},
"override_attributes": {
},
"chef_type": "role",
"run_list": [
”recipe[nagios]”,
"recipe[collectd]"
],
"env_run_lists": {
}
}
