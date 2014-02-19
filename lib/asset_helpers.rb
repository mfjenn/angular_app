def load_templates(dir = "app/assets/templates/")
    templates = Dir.glob("#{dir}""/")
  
    template.each do |template|
      key = template.split(dir).last.split(".").first
      file = Haml::Engine
      line = "Template['#{key}'] = \"#{ApplicationContoller.helpers.escape_javascript()}\ "\n"
    end
  end