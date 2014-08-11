# Create workspace directory under home directory
# Clone all 5 main applications

execute 'create workspace directory' do
  user node['current-user']
  command "mkdir ~/workspace"
end

execute 'clone DVA' do
	user node['current-user']
	command "cd ~/workspace && git clone --depth 1 https://github.com/Ticketfly/DVA.git"
end

execute 'clone USR' do
	user node['current-user']
	command "cd ~/workspace && git clone --depth 1 https://github.com/Ticketfly/USR.git"
end

execute 'clone BKS' do
	user node['current-user']
	command "cd ~/workspace && git clone --depth 1 https://github.com/Ticketfly/BKS.git"
end

execute 'clone INV' do
	user node['current-user']
	command "cd ~/workspace && git clone --depth 1 https://github.com/Ticketfly/INV.git"
end 

execute 'clone PUR' do
	user node['current-user']
	command "cd ~/workspace && git clone --depth 1 https://github.com/Ticketfly/PUR.git"
end