module BugsHelper
   
   def creator_name (id)
      User.find_by_id(id).name
   end
   
end
