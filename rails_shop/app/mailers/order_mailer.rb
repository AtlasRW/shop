class OrderMailer < ApplicationMailer
    default from: 'tantelyrandria@ymail.com'
    
    def resume_order(user,items)
      @user = user 
      @items = items 

      @url  = 'http://monsite.fr/login' 
  
      mail(to: @user.email, subject: 'Recapitulatif de votre commande !') 
    end

end
