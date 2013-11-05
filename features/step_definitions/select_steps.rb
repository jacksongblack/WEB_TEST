#encoding:utf-8
When /^在选择菜单(.+)中选择(.*)$/ do |field, value|
  select(value, :from => @params.return_key(field))
end

When /^选择菜单(.+)的值为(.*)$/ do |field, value|
  page.has_select?(field, :selected => value)
end

When /^在选择菜单中选择(.*)$/ do |value|
  choose(@params.return_key(value))
end