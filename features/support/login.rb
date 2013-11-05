#encoding:utf-8
class UserLogin
   #用户登录类
   def initialize(page)
    Capybara.register_driver :rack_test do |app|
       driver = Capybara::Selenium::Driver.new(app,:browser => :firefox)
       driver.browser.manage.window.maximize
       driver
     end
   @page = Capybara.page.visit page

   end
   def login_in(params,button)
     params.each  do |keyword,value|
       Capybara.page.fill_in keyword, :with=>value
     end
     Capybara.page.all(:xpath,button).first.click
   end
end