describe "default routing" do
  context "ROOT" do
    it 'should return success' do
        { :get => root_path }.should be_routable
    end
  end
  
  context "FinancialInstitution" do
    context "GET" do
      it "should show bank" do
        { :get => "/bank/1" }.should be_routable
      end
      
      it "should show bank index path" do
        { :get => "/bank/index" }.should_not be_routable
      end
      
      it "should not allow creation of new bank" do
        { :get => "/bank/new" }.should_not be_routable
      end
      
      it "should not allow editing of bank" do
        { :get => "/bank/1/edit" }.should_not be_routable
      end
                  
    end
    
    context "POST" do
      it "does not allow creation of new banks" do
         { :post => "/bank" }.should_not be_routable
      end
    end
    
    context "PUT" do
      it "does not allow update of bank" do
         { :put => "/bank" }.should_not be_routable
      end
    end
        
    context "DELETE" do
      it "does not allow deletion of bank" do
         { :delete => "/bank" }.should_not be_routable
      end
    end        
        
  end
end



describe "routing to profiles" do
  it "routes /profile/:username to profile#show for username" do
    { :get => "/profiles/jsmith" }.should route_to(
      :controller => "profiles",
      :action => "show",
      :username => "jsmith"
    )
  end

  it "does not expose a list of profiles" do
    { :get => "/profiles" }.should_not be_routable
  end
end