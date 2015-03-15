module SessionHelper

  def login(admin)
    session[:admin_id] = admin.id
  end

  def current_admin
    @current_admin ||= Admin.find_by(  id:  session[:admin_id]  )
  end 

  def logged_in?
    !current_admin.nil?
  end

  def logout
    session.delete(:admin_id)
    current_admin = nil
  end
end
