require 'rails_helper'

describe "Add Annonce" do
    context "Annonce" do
        
        it 'Add Annonces' do
           user = FactoryBot.create(:nduser) 
           visit new_user_session_path
           fill_in 'user[email]', with: 'ndusername@example.com'
           fill_in 'user[password]', with: 'password'
           click_button 'Log in'
           visit new_annonce_path
           annonce = FactoryBot.create(:annonce) 
           fill_in 'annonce[title]', with: 'Annonce 1'
           fill_in 'annonce[content]', with: 'Work !'
           click_button 'Create Annonce'
           expect(page).to  have_content 'Annonce was successfully created.'
        end
        
        
        
    end
    
    
end
