require 'spec_helper'

describe "BugPages" do
   
   subject { page }
  
   describe "index page" do
      let(:user) { FactoryGirl.create(:user) }
      #let!(:bug1) { FactoryGirl.create(:bug, user: user, title: "This bug", description: "Description here", status: "Open", priority: "medium", closed_by: "Jim", comment: "Comment here.") }
      #let!(:bug2) { FactoryGirl.create(:bug, user: user, title: "That bug", description: "Description here", status: "Open", priority: "medium", closed_by: "Jim", comment: "Comment here.") }
      
      before {  visit bugs_path }
     
      it { should have_selector('h1',    text: 'HUD Maps') }
      it { should have_selector('title', text: 'Reported bugs') }
   end
  
   describe "report a bug page" do
      before {  visit reportbug_path }
     
      it { should have_selector('h1',    text: 'Report a bug') }
      it { should have_selector('title', text: 'Report a bug') }      
   end
  
   describe "create bug" do
      before do 
         #sign_in :user
         #visit reportbug_path 
      end
      
      let(:submit) { "Create bug report" }
            
      describe "with invalid information" do 
         
         it "should not create a bug" do
            #expect { click_button submit }.not_to change(Bug, :count)
         end
         
         describe "after submission" do
            #before { click_button submit }
            
            #it { should have_selector('title', text: 'Report a bug') }
            #it { should have_content('error') }
         end          
                                 
      end
      
      describe "with valid information" do
         before do
            fill_in "Title",        with: "Weird bug title"
            fill_in "Description",  with: "Extended description of the bug."
            fill_in "Status",       with: "Open"          
            fill_in "Priority",     with: "Medium"
         end         
         
         describe "it should create a bug" do
           # expect { click_button submit }.to change(Bug, :count)          
         end
         
         describe "after submission" do
            #before { click_button submit }
                                   
            #it { should have_selector('title', text: 'Report a bug') }
            #it { should have_selector('div.alert.alert-success', text: 'Bug reported.') }
            #it { should have_content('Weird bug title') }
         end
         
      end
   end
  
   describe "show a bug" do   
   end 
  
end
