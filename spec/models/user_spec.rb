require 'rails_helper'

# RSpec.describe User, type::model do
  describe 'User Creation' do
    context "Creation avec donné invalide" do
      it "Creation échoué lorsqu'on ne renseigne pas le nom" do
        @user = User.new(
          email: "signfail@gmail.com",
          address: "Abomey",
          phone_number: "1234567",
          password: "password"
        )
        expect(@user).not_to be_valid
      end
      it "Creation échoué lorsqu'on ne renseigne pas l'email" do
        @user = User.new(
          name: "signfail",
          address: "Abomey",
          phone_number: "1234567",
          password: "password"
        )
        expect(@user).not_to be_valid
      end
      it "Creation échoué lorsqu'on ne renseigne pas l'addresse" do
        @user = User.new(
          name: "signfail",
          email: "signfail@gmail.com",
          phone_number: "1234567",
          password: "password"
        )
        expect(@user).not_to be_valid
      end
      it "Creation échoué lorsqu'on ne renseigne pas le numéro de tel" do
        @user = User.new(
          name: "signfail",
          email: "signfail@gmail.com",
          address: "Abomey",
          password: "password"
        )
        expect(@user).not_to be_valid
      end
      it "Creation échoué lorsqu'on ne renseigne pas le mot de passe" do
        @user = User.new(
          name: "signfail",
          email: "signfail@gmail.com",
          address: "Abomey",
          phone_number: "1234567",
        )
        expect(@user).not_to be_valid
      end

    end
    
    context "Création avec données valides" do
      it "Création réussie lorsqu'on renseigne tous les champs" do
        @user = User.new(
          name: "signsuccess",
          email: "signsuccess@gmail.com",
          address: "Abomey",
          phone_number: "1234567",
          password: "password"
        ) 
        expect(@user).to be_valid  
      end
    end
    
  end
  
# end
