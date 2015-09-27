class SessionController < ApplicationController
  def new #login page
    @admin = Admin.new
    offset = rand Frontpage.count
    @frontpage = Frontpage.offset(offset).first
  end

  def create #
    @admin = Admin.find_by(:email => params[:admin][:email])
    if @admin != nil && @admin.authenticate(params[:admin][:password])
      login @admin
      session.delete(:admin)
      redirect_to rails_admin_path
    else
      flash[:fail] = "Что-то пошло не так, попробуй еще разок"
      redirect_to login_path
    end
  end

  def destroy
    logout 
    redirect_to root_path
  end


end
