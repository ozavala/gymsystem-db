class ApplicationController < ActionController::Base

  def current_gymsite
    @gymsite ||= Gymsite.first
  end

end
