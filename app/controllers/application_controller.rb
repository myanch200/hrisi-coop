class ApplicationController < ActionController::Base
    def after_sign_in_path_for(resource)
        new_entry_path
    end
    def after_sign_up_path_for(resource)
        resource.update(location: request.location)
        root_path
      end
end
