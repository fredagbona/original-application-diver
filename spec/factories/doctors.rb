FactoryBot.define do
    
  
    factory :doctor, class: Doctor do
      id {1}
      user_id {2}
      speciality {"médécine générale"}
      hourly { 'Lundi 14h-15h' }
    end
end