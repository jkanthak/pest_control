require 'spec_helper'

describe "BugPages" do
   
   subject { page }
  
   describe "index page" do
      let(:user) { FactoryGirl.create(:user) }
      let!(:bug1) { FactoryGirl.create(:bug, user: user, title: "This bug", description: "Description here", status: "Open", priority: "medium", closed_by: "Jim", comment: "Comment here.") }
      let!(:bug2) { FactoryGirl.create(:bug, user: user, title: "That bug", description: "Description here", status: "Open", priority: "medium", closed_by: "Jim", comment: "Comment here.") }
      
      before {  visit bugs_path }
     
      it { should have_selector('h1',    text: 'Reported bugs') }
      it { should have_selector('title', text: 'Reported bugs') }
   end
  
   describe "report a bug page" do
   end
  
   describe "create bug" do
      
      describe "with invalid information" do        
      end
      
      describe "with valid information" do
         
         describe "it should create a bug" do          
         end
         
         describe "after creating the bug" do          
         end
         
      end
   end
  
   describe "show a bug" do   
   end 
  
end
