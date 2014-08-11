 template "Users/" + node['current_user'] + "/test.txt" do
	source "test.erb"
    owner node['current_user']
    mode "0644"
end

execute 'try passing variables' do 
	command "echo #{node['tflydevsetup']['fullname']} > test2.txt"
end