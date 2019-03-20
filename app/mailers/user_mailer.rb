class UserMailer < ApplicationMailer
  default from: 'no-reply@monsite.fr'

    default from: 'mon-petit-criquet@yopmail.com'

  def welcome_email(user)
  #on récupère l'instance user pour ensuite pouvoir la passer à la view en @user
  @user = user

  #on définit une variable @url qu'on utilisera dans la view d’e-mail
  @url  = 'http://monsite.fr/login'

    #on définit une variable @url qu'on utilisera dans la view d’e-mail
    @url  = 'https://mon-petit-criquet.herokuapp.com'

  # c'est cet appel à mail() qui permet d'envoyer l’e-mail en définissant destinataire et sujet.
  mail(to: @user.email, subject: 'Bienvenue chez nous !')


  def gig_attendance_email(gig, user)
    @gig = gig
    @user = user
    @url  = 'https://mon-petit-criquet.herokuapp.com'
    mail(to: @user.email, subject: 'Participation à un nouveau concert')
  end

  end

end
