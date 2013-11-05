#encoding:utf-8
When /^应该在(.+)看到(.*)$/ do |field, value|
  find_field(@params.return_key(field)).value.should eq(value)
end

When /^在(.+)找到(.*)$/ do |field, value|
  page.find_by_id(@params.return_key(field)).should have_content(value)
end

When /^在(.+)看到(.*)的标题$/ do |field, value|
  page.should have_selector(@params.return_key(field), :text => value)
end


When /^页面中(.+)部分显示为(.*)$/ do |field, value|
  find(:xpath, @params.return_key(field)).text.should eq(value)
end

When /^页面应该存在这样的(.*)元素$/ do |value|
  page.should have_xpath(@params.return_key(value))
end