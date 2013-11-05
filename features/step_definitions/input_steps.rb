#encoding:utf-8
When /^在输入框(.+)中输入(.*)$/ do |field, value|
  fill_in(@params.return_key(field), :with => value)
end