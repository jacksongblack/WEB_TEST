#encoding:utf-8
class FindClickLink


  def initialize(page)
    @page = page
  end

  def find_link(element_path, value, link_path)
    elements = @page.all(:xpath, element_path)
    links = @page.all(:xpath, link_path)
    raise ArgumentError.new('Did not find an element') if elements.empty?
    n = 0
    elements.each do |field|
      n += 1
      if field.text.eql?(value) do
       links.each do |link|

       end
      end
      end
    end
  end

  private

  def click_link

  end

end