# setup .profile in home directory

template "Users/" + node['current_user'] + "/.profile" do
	source "profile.erb"
    owner node['current_user']
    mode "0644"
end