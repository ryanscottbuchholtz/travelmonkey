# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    start_date 'February 18, 2014'
    end_date 'March 3, 2014'
    city 'Honolulu'
    country 'United States'

   end
end
