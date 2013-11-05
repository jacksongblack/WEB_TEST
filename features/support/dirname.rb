#encoding:utf-8
def dirname_to(dirname)
   case dirname
     when /^控制器OA页面$/
       "oa_rails/"
     when /^平台页面$/
       'web_platform/'
     when /^控制器admin页面$/
       "oa_rails/"
     when /^控制器保障页面$/
       "oa_rails/"
   end
end