class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  include SessionsHelper

  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please Login"
        redirect_to login_url
      end
    end
end
