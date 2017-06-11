module ListingsHelper
    def cats
    s = ''
    Cat.all.each do |cat|
      s << "['#{cat.name}', '#{cat.id}'],"
    end
    s.html_safe
  end
end
