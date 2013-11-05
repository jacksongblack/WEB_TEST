#encoding:utf-8

When /^按下(.+)$/ do |button|
  page.all(:xpath,@params.return_key(button)).first.click
end

