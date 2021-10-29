class ProfileController < ApplicationController
  def index
    @user = current_user 
    @appointments = current_user.appointments.all.order(created_at: :desc)
    @annonces = current_user.annonces.all.order(created_at: :desc)
   
   
  end

  def guest_user
    user = User.find_by(email: "guestpatient@gmail.com")
    if user
      sign_in user
      redirect_to profile_index_path
    else
      redirect_to home_index_path, notice: "User not exist"
    end
    
  end

  def guest_admin
    user = User.find_by(email: "guestadmin@gmail.com")
    if user
      sign_in user
      redirect_to rails_admin_path
    else
      redirect_to home_index_path, notice: "User not exist"
    end
   
  end

  def guest_doctor
    user = User.find_by(email: "guestdoctor@gmail.com")
    if user
      sign_in user
      redirect_to profile_index_path
    else 
      redirect_to home_index_path, notice: "User not exist"
    end
  end
end
