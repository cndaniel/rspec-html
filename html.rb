class HTML
  def self.tag(tag, content, attributes={})
     %Q(<#{tag} #{extract(attributes)}>#{content}</#{tag}>)
  end



  private
    def self.extract(attributes)
      attributes.inject("") do |attrs, (attr,value)|
        attrs<< " "if attrs != ""
        attrs<< %(#{attr}="#{value}")
      end
    end
end
