require 'rails_helper'

describe "Doctor Registration" do
    context "Registration" do
        it 'Registration success' do
            visit new_user_registration_path 
            fill_in 'user[name]', with: 'Dereck'
            fill_in 'user[email]', with: 'dereck@gmail.com'
            fill_in 'user[address]', with: 'Villa'
            fill_in 'user[phone_number]', with: '96314572'
            fill_in 'user[password]', with: 'password'
            click_on 'Sign up!'
            expect(page).to  have_content 'MeetDoctor'
        end
        it 'Session' do
           user = FactoryBot.create(:nduser) 
           visit new_user_session_path
           fill_in 'user[email]', with: 'ndusername@example.com'
           fill_in 'user[password]', with: 'password'
           click_button 'Log in'
           doctor = FactoryBot.create(:doctor) 
           click_on 'Add my speciality and hourly'
           fill_in 'doctor[speciality]', with: 'médécine générale'
           fill_in 'doctor[hourly]', with: 'Lundi 14h-15h'
           click_button 'Create Doctor'
           expect(page).to  have_content 'Infos was successfully added.'
        end
        it 'Log out' do
            user = FactoryBot.create(:nduser) 
           visit new_user_session_path
           fill_in 'user[email]', with: 'ndusername@example.com'
           fill_in 'user[password]', with: 'password'
           click_button 'Log in'
           click_on 'Logout'
           expect(page).to  have_content 'Signed out successfully.'
        end
        
        
    end
    
    
end
