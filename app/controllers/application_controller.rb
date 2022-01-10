class ApplicationController < ActionController::Base
    include LoginRequired

    def after_sign_in_path_for(resource)
        new_entry_path
    end
    def after_sign_up_path_for(resource)
        resource.update(location: request.location)
        root_path
    end

    def current_user
        # handles bug where user was deleted before session ended
        if session[:user_id] && User.exists?(session[ :user_id])
          @current_user ||= User.find(session[:user_id])
        else
          @current_user = nil
        end
      end
end
