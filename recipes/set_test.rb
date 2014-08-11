 template "Users/" + node['current_user'] + "/test.txt" do
	source "test.erb"
    owner node['current_user']
    mode "0644"
end

execute 'try passing variables' do 
	user node['current_user']
	command "echo '>>>>>>> #{node['tflydevsetup']['fullname']}'"
end