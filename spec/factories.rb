FactoryGirl.define do
   factory :user do
      name     "Leopold Bloom"
      email    "lbloom@gmail.com"
      password "password"
      password_confirmation "password"
   end
     
   factory :bug do
      #sequence(:title) { |n| "Bug #{n}" }
      title "Bug title here"
      description "Here's a lengthy, detailed description of the bug."
      status "Open"
      priority "medium"
      closed_by "Leopold"
      comment "Here's a comment about the bug."
      user
   end
  
end