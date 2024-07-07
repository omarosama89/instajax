require 'active_interaction'

class GetServices < ActiveInteraction::Base
  def execute
    Service.active
  end
end
