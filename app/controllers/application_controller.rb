class ApplicationController < ActionController::Base
  protect_from_forgery

    private

    def catch_not_found
      yield
      rescue ActiveRecord::RecordNotFound
        redirect_to root_path, alert: "Page not found."
    end
    
    private

    def current_user
      User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
      redirect_to root_url, alert: "Not authorized" if current_user.nil?
    end
end
