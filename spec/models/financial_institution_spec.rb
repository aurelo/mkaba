require 'spec_helper'

describe FinancialInstitution do
  
  before do
    # create financial institutions for uniqueness test to pass
    Factory(:bank)
  end
  
  it {should validate_presence_of(:name)}
  it {should validate_uniqueness_of(:name)}    
  it {should have_many(:branches)}    
end
