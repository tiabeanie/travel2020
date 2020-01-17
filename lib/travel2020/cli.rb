class Travel2020::CLI 
  
  def call 
    list_destinations
    menu
    goodbye
  end 
  
  def list_destinations
    puts "Top Ten Travel Destinations for 2020"
    puts <<-DOC 
      1. Bhutan
      2. England
      3. North Macedonia 
    DOC
  end 
  
  def menu
    puts "Enter the number of the destination you're interested in or type exit to enter"
    while input != "exit"
      input = gets.strip.downcase
      case input 
      when "1"
        puts "more info on destination 1"
      when "2" 
        puts "more info on destination 2"
      when "3"
        puts "more info on destination 3"
      end 
    end 
  end
  
  def goodbye
    puts "Farewell, and happy travels!"
  end 
end 