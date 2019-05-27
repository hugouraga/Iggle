module LoginProfissionalHelper
    def sign_in(user)
        session[:user_id] = user.id
    end

    def sign_out
        session.delete(:user_id)
    end

    def current_user
        @current_user ||= ProfessionalUser.find_by(id: session[:user_id])
    end

    def user_signed_in?
        !current_user.nil?
    end
end
