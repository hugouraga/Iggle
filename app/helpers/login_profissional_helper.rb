module LoginProfissionalHelper
    def sign_in(user)
        session[:user_id] = user.id
        session[:email] = user.email
    end

    def sign_out
        session.delete(:user_id)
    end

    def current_professional_user
        @current_professional_user ||= ProfessionalUser.find_by(id: session[:user_id], email: session[:email])
    end

    def professional_user_signed_in?
        !current_professional_user.nil?
    end
end
