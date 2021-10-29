FactoryBot.define do
    
  
    factory :appointment, class: Appointment do
      id {5}
      doctor_id {1}
      user_id {1}
      message {'Thanks'}
      date {DateTime.now + 1.day}
    end
end