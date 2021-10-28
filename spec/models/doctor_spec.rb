require 'rails_helper'


# RSpec.describe User, type::model do
  describe 'Doctor Creation' do
    
    context "Création avec données valides" do
      it "Création réussie lorsqu'on renseigne tous les champs" do
        @doctor = Doctor.new(
          speciality: "Médécine générale",
          hourly: "Lundi 14h-18h"
        ) 
        expect(@doctor).to  be_valid
      end
    end
    
  end
  
# end

