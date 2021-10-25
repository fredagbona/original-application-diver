class SessionsController < Devise::SessionsController
    #before_action :destroy_user, only: :destroy
    #protected 
    #def destroy_user
      
   #     if current_user.name=="GuestPatient" or current_user.name=="GuestDoctor" or current_user.name=="Admin"
    #      current_user.destroy    
   #     end
      
  #  end
end