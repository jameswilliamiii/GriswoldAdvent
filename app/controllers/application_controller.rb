class ApplicationController < ActionController::Base
  protect_from_forgery

    private

    def catch_not_found
      yield
      rescue ActiveRecord::RecordNotFound
        redirect_to root_path, alert: "Page not found."
    end
end
