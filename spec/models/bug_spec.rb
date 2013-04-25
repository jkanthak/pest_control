require 'spec_helper'

describe Bug do

  before do
    @user = User.new(name: "Example User", email: "user@example.com",
                    password: "foobar", password_confirmation: "foobar")
    @bug = Bug.new(title: "This bug", description: "Description here",
                   status: "Open", priority: "medium", 
                   reported_by: 1, closed_by: "", 
                   comment: "Comment here.")
  end

  subject { @bug }


  it { should respond_to(:title) }
  it { should respond_to(:description) }  
  it { should respond_to(:status) }
  it { should respond_to(:priority) }  
  it { should respond_to(:closed_by) }
  it { should respond_to(:reported_by) }  
  it { should respond_to(:comment) }  

  it { should be_valid }  

  describe "when title is not present" do
    before { @bug.title = " " }
    it { should_not be_valid }
  end

  describe "when status is not present" do
    before { @bug.status = " " }
    it { should_not be_valid }
  end
  
end
