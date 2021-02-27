# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  layout "layouts/signinuplayout"

  before_action :configure_sign_up_params, only: [:new, :create]
  before_action :configure_account_update_params, only: [:update]

  # GET /resource/sign_up
  def new
    # @user = User.new(configure_sign_up_params)
    # respond_to do |format|
    #   format.html
    #   format.js
    # end
    super
  end

  # POST /resource
  def create
    # @user = User.new(configure_sign_up_params)

    # respond_to do | format |
    #   if @user.save
    #     format.html { redirect_to new_user_session_url }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @user.errors, status: :unprocessable_entity }
    #   end
    # end
    super
  end

  # GET /resource/edit
  def edit
    super
  end

  # PUT /resource
  def update
    super
  end

  # DELETE /resource
  def destroy
    super
  end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end

  protected

  # If you have extra params to permit, append them to the sanitizer.
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, {}){|s| s.permit(:first_name, :last_name, :password, :email, :password_confirmation)}
  end

  # If you have extra params to permit, append them to the sanitizer.
  def configure_account_update_params
    devise_parameter_sanitizer.permit(:account_update, {}){ |u| u.permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password)}
  end

  # The path used after sign up.
  def after_sign_up_path_for(resource)
    new_user_session_url
    # super(resource)
  end

  # The path used after sign up for inactive accounts.
  def after_inactive_sign_up_path_for(resource)
    super(resource)
  end

end
