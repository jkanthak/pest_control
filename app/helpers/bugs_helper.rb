module BugsHelper
   
   def creator_name (id)
      User.find_by_id(id).name
   end
   
   def priority_to_int(str)
      case str
         when 'Urgent'
           return_int = 0
         when 'High'
           return_int = 1
         when 'Medium'
           return_int = 2        
         else
           return_int = 3  
      end        
      return_int     
   end
   
   def priority_to_str(int)
      case int
         when 0
           return_str = 'Urgent'
         when 1
           return_str = 'High'
         when 2
           return_str = 'Medium'      
         else
           return_str = 'Low'
      end        
      return_str       
   end
end
