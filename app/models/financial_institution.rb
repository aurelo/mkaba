# == Schema Information
#
# Table name: financial_institutions
#
#  id          :integer         not null, primary key
#  name        :string(255)     not null
#  description :text
#  created_at  :datetime
#  updated_at  :datetime
#

class FinancialInstitution < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
  
  has_many :branches
  has_many :atms
end
