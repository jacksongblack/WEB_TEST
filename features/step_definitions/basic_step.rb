#encoding:utf-8

When /^载入(.+)所有参数$/ do |dirname|
  @params = ReadConfigFile.new(dirname_to(dirname))
end

When /^我确认弹出框$/ do
  page.driver.browser.switch_to.alert.accept
end

When /^暂停(.*)秒$/ do  |time|
  sleep time.to_i
end




