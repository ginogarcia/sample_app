module SessionsHelper
<<<<<<< HEAD
  
  def sign_in(user)
    cookies.permanent.signed[:remember_token] = [user.id, user.salt]
    self.current_user = user
  end
  
  def current_user=(user)
    @current_user = user
  end
  
  def current_user
    @current_user ||= user_from_remember_token
  end
  
  def signed_in?
    !current_user.nil?
  end
  
  def sign_out
    cookie.delete(:remember_token)
    self.current_user = nil
  end
  
  private    
    def user_from_remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end
    
    def remember_token
      cookies.signed[:remember_token] || [nil, nil]
    end
=======
>>>>>>> 1599c9c9235458e73719ad1d41c0dfac0259bb52
end
