FactoryBot.define do
    
  
    factory :annonce, class: Annonce do
      id {3}
      user_id {2}
      title {"Annonce 1"}
      content { "Work !" }
    end
end