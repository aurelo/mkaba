# This will guess the FinancialInstitution class
FactoryGirl.define do
  factory :bank, :class => FinancialInstitution do |f| 
    f.name "Karlovacka banka"
    f.description 'Place description here'
  end

end# == Schema Information
#
# Table name: financial_institutions
#
#  id          :integer         not null, primary key
#  name        :string(255)     not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

