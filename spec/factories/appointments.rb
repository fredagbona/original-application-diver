FactoryBot.define do
    
  
    factory :appointment, class: Appointment do
      id {6}
      doctor_id {4}
      user_id {1}
      message {'Thanks'}
      date {DateTime.now + 2.day}
    end
end