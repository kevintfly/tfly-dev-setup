 template "Users/" + node['current_user'] + "/.gitconfig" do
	source "gitconfig.erb"
    owner node['current_user']
    mode "0644"
end