# Read about factories at http://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :branches do
  end
end
# == Schema Information
#
# Table name: branches
#
#  id                       :integer         not null, primary key
#  financial_institution_id :integer
#  latitude                 :float
#  longitude                :float
#  address                  :string(255)
#  city                     :string(255)
#  postal_code              :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#

