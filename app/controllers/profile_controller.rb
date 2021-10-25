class ProfileController < ApplicationController
  def index
    @user = current_user 
    @appointments = Appointment.all
   
  end

  def guest_user
    user = User.create(
      name: "Guest Patient",
      email: "guestpatient@gmail.com",
      address: "Porto",
      phone_number: "95214782",
      password: "guestpatient"
    )
      sign_in user
      redirect_to profile_index_path
    
    
  end

  def guest_admin
    user = User.create(
      name: "Guest Admin",
      email: "guestadmin@gmail.com",
      address: "Bohicon",
      phone_number: "95214782",
      password: "guestadmin",
      admin: "true"
  )
     
      sign_in user
      redirect_to rails_admin_path
   
  end

  def guest_doctor
    user = User.create(
      name: "Guest Doctor",
      email: "guestdoctor@gmail.com",
      address: "Ouidah",
      phone_number: "97856314",
      password: "guestdoctor",
      establishment: "true"
  )
    
      sign_in user
      redirect_to profile_index_path
    
  end
end
