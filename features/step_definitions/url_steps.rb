#encoding:utf-8

When /^我来到(.+)$/ do |page_name|
  visit @params.return_key(page_name)
end

When /^定向到(.+)$/ do |page_name|
  page.current_url.should eq @params.return_key(page_name)
end

