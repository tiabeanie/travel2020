class Travel2020::CLI 
  
  def call 
    puts "Top Ten Travel Destinations for 2020"
    list_destinations
  end 
  
  def list_destinations
    puts <<-DOC
      1. Bhutan
      2. England
      3. North Macedonia 
    DOC
  end 
end 