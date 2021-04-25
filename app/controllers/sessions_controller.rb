class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
      	redirect_to root_path, notice: "Bienvenue <%=  %> !"
    	else
      		flash.now[:alert] = "Erreur de connexion, veuillez réessayer."
          render "new"
      end
  end

  def destroy
    session.delete(:user_id)
  	redirect_to root_path
  end
end
