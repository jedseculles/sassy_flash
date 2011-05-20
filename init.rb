require 'pretty_flash'

ActionController::Base.send(:include, PrettyFlash::ControllerMethods)
ActionView::Base.send(:include, PrettyFlash::Display)