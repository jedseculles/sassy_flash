require 'sassy_flash'

ActionController::Base.send(:include, SassyFlash::ControllerMethods)
ActionView::Base.send(:include, SassyFlash::Display)