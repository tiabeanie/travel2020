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
    @destination = Travel2020::Destination.all
  end 
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the destination you're interested in. Type list to see the destinations again or type exit to leave"
      input = gets.strip.downcase
      case input 
      when "1"
        puts "more info on destination 1"
      when "2" 
        puts "more info on destination 2"
      when "3"
        puts "more info on destination 3"
      when "list"
        list_destinations
      else 
        puts "That number is unavailable, type list to see the destinations again or exit to leave"
      end 
    end 
  end
  
  def goodbye
    puts "Farewell, and happy travels!"
  end 
end 