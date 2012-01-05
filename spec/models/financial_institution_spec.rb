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

require 'spec_helper'

describe FinancialInstitution do
  
  before do
    # create financial institutions for uniqueness test to pass
    Factory(:bank)
  end
  
  it {should validate_presence_of(:name)}
  it {should validate_uniqueness_of(:name)}    
  it {should have_many(:branches)}    
  it {should have_many(:atms)}    
  it {should have_many(:clients)}    
end
