file '/home/ec2-user/node_info.txt' do
	content "
Info about this PC:
==========================
hostname: #{node['hostname']}
Total RAM: # {node['memory']['total']}
"
end


