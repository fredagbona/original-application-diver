FactoryBot.define do
    
  
    factory :doctor, class: Doctor do
      id {4}
      user_id {2}
      speciality {"médécine générale"}
      hourly { 'Lundi 14h-15h' }
    end
end