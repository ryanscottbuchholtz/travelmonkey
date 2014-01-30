# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    email 'ryanscottbuchholtz@gmail.com'
    password 'password'
    first_name 'Ryan'
    last_name 'Buchholtz'
    birth_month 'September'
    birth_day 25
    birth_year 1976
  end
end
