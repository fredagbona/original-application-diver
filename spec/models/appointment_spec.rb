require 'rails_helper'

# RSpec.describe User, type::model do
describe 'Appointment Creation' do
    context "Creation avec données invalides" do
      it "Creation échoué lorsqu'on ne renseigne pas le titre" do
        @appointment = Appointment.new(
          message: "Abomey"
        )
        expect(@appointment).not_to be_valid
      end

    end
    
    context "Création avec données valides" do
        it "Creation valide lorsqu'on  renseigne tous les champs" do
          @user = User.new(
            name: "signsuccess",
            email: "signsuccess@gmail.com",
            address: "Abomey",
            phone_number: "1234567",
            password: "password",
            establishment: true
          ) 
          @doctor = Doctor.new(
            user_id: @user.id,
            speciality: "Médécine générale",
            hourly: "Lundi 14h-18h"
          ) 
            @appointment = Appointment.new(
              doctor_id: @doctor.id,
              user_id: @user.id,
              message: "Title"
            )
           expect(@appointment).to be_valid
        end
    end
    
  end
  
# end