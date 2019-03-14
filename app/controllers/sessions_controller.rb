class SessionsController < ApplicationController

	# corespond à la page de login

	def new
	end

	# effectue l'authentification
	def create
	  # cherche s'il existe un utilisateur en base avec l’e-mail
	  @user = User.find_by(email: params[:email])

	  # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe
	  if @user && @user.authenticate(params[:encrypted_password])
	    session[:user_id] = @user.id
	    remember @user
	    # redirige où tu veux, avec un flash ou pas
	    redirect_to root_path
	  else
	    flash.now[:danger] = 'Invalid email/password combination'
	    render 'new'
	  end
	end

	# logout
	def destroy
		session.delete(:user_id)
		redirect_to root_path
	end

end
