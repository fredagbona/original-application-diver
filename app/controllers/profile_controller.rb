class ProfileController < ApplicationController
  def index
    @user = current_user 
    @appointments = Appointment.all
   
  end
end
