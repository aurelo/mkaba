require 'spec_helper'

describe "FinancialInstitutions" do
 
  context "root" do
    
    it 'should return success' do
      get root_path
      response.status.should be(200)
    end
    
    #it "should not equal bank index path" do
    #  visit root_path
     # current_path.should_not eq(bank_index_path)
     ## save_and_open_page
    #end
   end
end
