class Application 
  
@@items = ["Apples", "Carrots", "Pears"]

<<<<<<< HEAD
@@cart = []


  
=======
  @@items = ["Apples","Carrots","Pears"]
  @@cart = []
>>>>>>> b6a205023b28ad1f8b1e290632b53858d669e947
  def call(env)
    resp = Rack::Response.new 
    req = Rack::Request.new(env)
<<<<<<< HEAD
    
    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end 
    elsif req.path.match(/search/) 
      search_term = req.params["q"]
      resp.write handle_search(search_term)
      
    elsif req.path.match(/cart/)
      if @@cart.empty? 
        resp.write "Your cart is empty"
      else
        @@cart.each do |item| 
          #@@cart is basically a class variable
          resp.write "#{item}\n"
        end 
      end 
      elsif  req.path.match(/add/)
      item_to_add = req.params["item"]
      if @@items.include? item_to_add
        @@cart << item_to_add
        resp.write "added #{item_to_add}"
      else 
        resp.write "We don't have that item!"
      end 
    else 
      resp.write "Path Not Found"
    end 
    
=======


    if req.path.match(/items/)
      @@items.each do |item|
        resp.write "#{item}\n"
      end
      
    
    if req.path.match(/cart/)
      @@cart.each do |item|
        resp.write "#{item}\n"
        
      end
      
      
      
      
    elsif req.path.match(/search/)
      search_term = req.params["q"]
      resp.write handle_search(search_term)
    end
    else
      resp.write "Your cart is empty"
    end

>>>>>>> b6a205023b28ad1f8b1e290632b53858d669e947
    resp.finish
  end

  

  def handle_search(search_term)
    if @@items.include?(search_term)
      return "#{search_term} is one of our items"
    else 
      return "Couldn't find #{search_term}"
    end
  end 
end 