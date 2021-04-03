class ApplicationController < ActionController::Base

    private
        def authenticate_user!
            if current_user.nil?
                redirect_to new_user_session_path
            end
        end
end
