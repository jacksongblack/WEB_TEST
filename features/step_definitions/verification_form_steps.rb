#encoding:utf-8

When /^在表单(.+)中应该看到有且只有一个(.*)$/ do |field,value|
  FindPageElements.new(page).only_to_find_a(@params.return_key(field),value)
end

When /^看到(.+)的内容含有(.*)$/ do |field, value|
  FindPageElements.new(page).find_more(@params.return_key(field),value)
end

When /^(.+)中的内容包含关键字(.*)$/ do |field, value|
  FindPageElements.new(page).should_all_be_match(@params.return_key(field),value)
end
