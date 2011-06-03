module SassyFlash
  module ControllerMethods
    TYPES = [:notice, :warning, :error, :alert]
    
    TYPES.each do |type|
      define_method(type) do |msg|
        flash[type] = msg
      end
      
      define_method("#{type}_now") do |msg|
        flash.now[type] = msg
      end
    end
  end

  module Display
    def display_flash_messages
      html = "".tap do |html|
        flash.each do |css_class, message|
          html << content_tag(:p, content_tag(:span, nil) + message, :class => "flash_#{css_class}", :id => "flash_#{css_class}")
        end
      end
      html_wrapper = content_tag(:div, raw(html), :class => "sassy_flashes", :id => "sassy_flashes")
      raw(html_wrapper)
    end
  end
end