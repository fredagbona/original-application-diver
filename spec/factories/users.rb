FactoryBot.define do
  factory :user do
    id {1}
    name {"username"}
    email { 'username@example.com' }
    address {"Cotonou"}
    phone_number {"90658712"}
    password { 'password' }
  end

  factory :nduser, class: User do
    id {2}
    name {"ndusername"}
    email { 'ndusername@example.com' }
    address {"Calavi"}
    phone_number {"98542104"}
    password { 'password' }
    establishment {true}
  end
end
