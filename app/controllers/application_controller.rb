class ApplicationController < ActionController::Base
  before_action :detect_device_format
  
  private

    def detect_device_format
      case request.user_agent
      when /iPhone/i, /Android/i && /mobile/i, /Windows Phone/i
          request.variant = :phone
      else
          request.variant = :desktop
      end
    end
end
