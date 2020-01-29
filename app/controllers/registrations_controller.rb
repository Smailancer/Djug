class RegestrationController < Devise::RegestrationsController

private

def sign_up_params
    param.require(:user).permit(:username, :email, :password, :password_confirmation)
    
end

def account_update_params
    param.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)
    
end
end