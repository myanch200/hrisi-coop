 module LoginRequired
  extend ActiveSupport::Concern

  def login_required
    redirect_path =  new_user_session_url(redirect_to: request.path)
    redirect_to(redirect_path, alert: 'Please login first...') unless current_user.present?
  end

  
end
