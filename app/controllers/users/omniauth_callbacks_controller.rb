# frozen_string_literal: true

class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.find_for_facebook_oauth(
      request.env["omniauth.auth"]
      )
    if @user.persisted?
      flash[:notice] = "Has ingresado via facebook"
      sign_in_and_redirect @user, :event => :authentication
    else
      redirect_to_new_user_registration_url
    end
  end

end
