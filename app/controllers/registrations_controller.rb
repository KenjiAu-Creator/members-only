class RegistrationsController < Devise::RegistrationsController
    private
      def sign_up_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end

      def update_params
        params.require(:user).permit(:username, :email, :password, :password_confirmation)
      end
end