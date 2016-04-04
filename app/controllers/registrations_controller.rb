class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:firstname, :name, :email, :password, :password_confirmation, :name, :firstname, :gender)
  end

  def account_update_params
    params.require(:user).permit(:firstname, :name, :email, :password, :password_confirmation, :current_password, :name, :firstname, :gender)
  end
end
 