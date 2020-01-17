class Travel2020::CLI 
  
  def call 
    list_destinations
    menu
    goodbye
  end 
  
  def list_destinations
    puts "Top Ten Travel Destinations for 2020"
    @destination = Travel2020::Destination.all
    @destination.each.with_index(1) do |destination, i|
      puts "#{i}. #{destination.name} - #{destination.continent}"
    end 
  end 
  
  def menu
    input = nil
    while input != "exit"
      puts "Enter the number of the destination you're interested in. Type list to see the destinations again or type exit to leave"
      input = gets.strip.downcase
      if input.to_i > 0 
        the_destination = @destination[input.t0_i-1]
        puts "#{i}. #{the_destination.name} - #{the_destinationdestination.continent}"
      elsif input == "list"
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