module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  
   def current_user
    @current_user ||= User.find_by(id: session[:user_id])  # el || es como el += de java nada mas que es el de atras si esta y sino el de adelante
   end
   
   def logged_in?
    !current_user.nil?
   end
   
   def log_out
    session.delete(:user_id)
    @current_user = nil
   end
  
end
