def hello(name)
   "Hello, " + name 
end

def starts_with_consonant?(s)
   not s.capitalize.start_with?("A", "E", "I", "O", "U") 
end

def binary_multiple_of_4?(s)
   valid = s.split(//).uniq.all?{ |c| c == "0" || c == "1" }
   if(!s.empty? && valid)
      puts s.to_i(2)
      s.to_i(2).%(4).zero?
   else
      false 
   end       
end