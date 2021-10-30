require 'rails_helper'

# RSpec.describe User, type::model do
  describe 'Annonce Creation' do
    context "Creation avec donné invalide" do
      it "Creation échoué lorsqu'on ne renseigne pas le titre" do
        @annonce = Annonce.new(
          content: "Abomey"
        )
        expect(@annonce).not_to be_valid
      end
      it "Creation échoué lorsqu'on ne renseigne pas le contenu" do
        @annonce = Annonce.new(
          title: "Abomey"
        )
        expect(@annonce).not_to be_valid
      end

    end
    
    context "Création avec données valides" do
        it "Creation valide lorsqu'on ne renseigne pas le titre" do
            @annonce = Annonce.new(
                title: "Title",
              content: "Abomey"
              
            )
           expect(@annonce).to be_valid
        end
    end
    
  end
  
# end
