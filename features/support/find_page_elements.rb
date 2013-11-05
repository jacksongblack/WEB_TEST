#encoding:utf-8
class FindPageElements
  #选择页面元素并匹配的显示值
  def initialize(page)
    @page = page
  end
  #所有元素中，只有一个能成功匹配
  def only_to_find_a(elements_path, value)
    result = 0
    traversal(elements_path) do |field|
      result += 1 if field.text.eql?(value)
    end
    raise ArgumentError.new('Not found or more than one page element') unless result.eql?(1)
  end
  #所有找到的页面元素都应该被匹配成功
  def should_all_be_match(elements_path, value)
    result = true
    traversal(elements_path) do |field|
      result = false unless field.text =~ /#{value}/
    end
    raise ArgumentError.new('At least one is not matched') if result.eql?(false)
  end
  #找到所有元素都不应该含有的值
  def find_more(elements_path,value)
    result = false
    traversal(elements_path) do |field|
      result = true unless field.text.eql?(value)
    end

    raise ArgumentError.new('Values ​​found in at least one mismatch') unless result.eql?(true)
  end

  private

  def traversal(elements_path)
    elements = @page.all(:xpath, elements_path)
    raise ArgumentError.new('Did not find an element') if elements.empty?
    elements.each do |field|
      yield(field)
    end
  end
end