# == Schema Information
#
# Table name: clients
#
#  id                       :integer         not null, primary key
#  financial_institution_id :integer
#  first_name               :string(255)
#  last_name                :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#

class Client < ActiveRecord::Base
  belongs_to :financial_institution
  has_many :accounts
  has_many :transactions, :through => :accounts
  
end
