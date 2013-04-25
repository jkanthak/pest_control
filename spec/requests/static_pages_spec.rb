require 'spec_helper'

describe "StaticPages" do
  
  subject { page }
  
  
  describe "Help page" do
    before { visit help_path }   
        
    it { should have_selector('h1', text: 'Help') }
    it { should have_selector('title', text: 'Help') }   
  end
  
  describe "About page" do
    before { visit about_path }
          
    it { should have_selector('h1', text: 'About') }
    it { should have_selector('title', text: 'About') }         
  end

  describe "Contact page" do
    before { visit contact_path }
        
    it { should have_selector('h1', text: 'Contact') }
    it { should have_selector('title', text: 'Contact') } 
  end
  
  it "should have the right links on the layout" do
    visit root_path
    #click_link "Sign in"
    #page.should have_selector 'title', text: 'Sign in'
    click_link "About"
    page.should have_selector 'title', text: 'About'
    click_link "Help"
    page.should have_selector 'title', text: 'Help'
    click_link "Contact"
    page.should have_selector 'title', text: 'Contact'
    click_link "Home"   
  end
  
end

