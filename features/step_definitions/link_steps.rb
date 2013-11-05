#encoding:utf-8
When /^看到(.+)超链接$/ do |value|
  find_link(value).visible?
end

When /^点击(.*)$/ do |value|
 click_link(@params.return_key(value))
end

When /^找到并点击(.*)链接$/ do |field|
  find(:xpath,@params.return_key(field)).first.click
end

When /^选择点击(.+)$/ do |value|
  find_link(value).click
end