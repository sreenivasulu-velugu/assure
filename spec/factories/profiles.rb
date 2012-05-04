# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :profile do
    user nil
    about "MyText"
    birthday "2012-05-04"
    work "MyText"
    address "MyText"
    education "MyText"
    cars "MyText"
  end
end
