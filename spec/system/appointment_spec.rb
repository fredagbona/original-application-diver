require 'rails_helper'

describe "Add Annonce" do
    context "Annonce" do
        
        it 'Add Annonces' do
          
           user = FactoryBot.create(:user) 
           visit new_user_session_path
           fill_in 'user[email]', with: 'username@example.com'
           fill_in 'user[password]', with: 'password'
           click_button 'Log in'
           user = FactoryBot.create(:nduser) 
           doctor = FactoryBot.create(:doctor) 
           click_on 'Doctors'
           sleep 1
           click_on 'See more'
           sleep 1
           click_on 'Make Appointment'
           appointment = FactoryBot.create(:appointment) 
           fill_in 'appointment[message]', with: 'Thanks'
           fill_in 'appointment[date]', with: DateTime.now + 2.day
           click_on 'Create Appointment'
           expect(page).to  have_content 'Appointment was successfully created.'
        end
        
        
        
    end
    
    
end
