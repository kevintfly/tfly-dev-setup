 template "Users/" + node['current_user'] + "/test.txt" do
	source "test.erb"
    owner node['current_user']
    mode "0644"
	variables({
    	:fullname => "Bob Wilson"
  	})
end