class SessionsController < ApplicationController
    # Sign in form
    def new
    end
    
    # Submitting the sign in form
    def create
        # Require email and password params
        # Ensure that a user exists for that email
        #  (case insensitive)
        # If user is found
        #   Match the password
        #   If password matches
        #     session[:current_user_id] = user.id
        #   If not
        #     render new with error
        # If not
        #   render new with error
    end
    
    # Logging out
    def destroy
    end
end