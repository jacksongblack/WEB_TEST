class ReadConfigFile
  #读取配置文件类
  PARAMS_FILE_PATH = File.join(File.dirname(__FILE__), '..', 'config_files/')

  def initialize(dirname)
    @hash = {}
    Dir.foreach(PARAMS_FILE_PATH + dirname).each do |file_name|
      if file_name != '.' and file_name != '..'
        puts file_name
        @hash.merge!(YAML::load(ERB.new(File.read(PARAMS_FILE_PATH + dirname +file_name)).result))
      end
    end
    self
  end

  def return_key(key)
     if @hash[key].nil?
       return key
     end
     @hash[key]
  end
end