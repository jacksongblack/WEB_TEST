#encoding:utf-8
When /^来到(.+)并以(.+)身份登录$/ do |page, user_name|
  UserLogin.new(@params.return_key(page)).login_in(@params.return_key(user_name),@params.return_key("登录"))
end
