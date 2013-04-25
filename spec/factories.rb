FactoryGirl.define do
   factory :user do
      name     "John Kanthak"
      email    "johnkanthak@gmail.com"
      password "doctor61"
      password_confirmation "doctor61"
   end
     
   factory :bug do
      #sequence(:title) { |n| "Bug #{n}" }
      title "Bug title here"
      description "Here's a lengthy, detailed description of the bug."
      status "Open"
      priority "medium"
      closed_by "George"
      comment "Here's a comment about the bug."
      user
   end
  
end