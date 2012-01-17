require 'spec_helper'

describe "FinancialInstitutions" do
 
  context "root" do
    
    it 'should return success' do
      get root_path
      response.status.should be(200)
    end
    
    it "should have appropriate title" do
      visit root_path
      # page.should have_selector :title, :text => "mKaba"
      page.should have_content "mKaba"
    end
    
    context "links" do
      it "should have Novosti link" do
        visit root_path
        page.should have_content "Novosti"
        # save_and_open_page
      end

      it "should have mKaba link" do
        visit root_path
        page.should have_content "Demo mKaba"
        # save_and_open_page
      end
      
      it "should have Bankomati link" do
        visit root_path
        page.should have_content "Bankomati"
        # save_and_open_page
      end      

      it "should have Poslovnice link" do
        visit root_path
        page.should have_content "Poslovnice"
        # save_and_open_page
      end

      
    end
    
   end
end
