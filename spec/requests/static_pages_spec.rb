require 'spec_helper'

describe "StaticPages" do
  before do
      visit '/static_pages/home'    
  end
  
  describe "Home page" do  
    
    it "should have the title 'Home'" do
      page.should have_selector('title', text: 'Home')
    end
    
    it "should have the content 'Pest Control'" do
      page.should have_selector('h1', text: 'Pest Control')
    end
    
  end
  
  describe "Help page" do
    before do
      visit '/static_pages/help'    
    end
        
    it "should have the title 'Help'" do
      page.should have_selector('title', text: 'Help')
    end
    
    it "should have the content 'Help'" do
      page.should have_selector('h1', text: 'Help')   
    end
  end
  
  describe "About page" do
    before do
      visit '/static_pages/about'    
    end
        
    it "should have the title 'About'" do
      page.should have_selector('title', text: 'About')
    end
    
    it "should have the content 'About'" do
      page.should have_selector('h1', text: 'About')   
    end
  end
end
