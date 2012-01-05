# This will guess the FinancialInstitution class
FactoryGirl.define do
  factory :bank, :class => FinancialInstitution do |f| 
    f.name "Karlovacka banka"
    f.description 'Place description here'
  end

end