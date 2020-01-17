class Travel2020::Destination 
  attr_accessor :name, :continent, :url
  
  def self.all 
    #puts <<-DOC 
    #  1. Bhutan
    #  2. England
    #  3. North Macedonia
    #  DOC
    
    destination_1 = self.all 
    destination_1.name = "Bhutan"
    destination_1.continent = "Asia" 
    destination_1.url = "https://www.lonelyplanet.com/bhutan" 
    
    destination_2 = self.all
    destination_2.name = "England" 
    destination_2.continent = "Europe" 
    destination_2.url = "https://www.lonelyplanet.com/england"
    
    destination_3 = self.all
    destination_3.name = "North Macedonia"
    destination_3.continent = "Europe"
    destination_3.url = "https://www.lonelyplanet.com/macedonia"
    
    [destination_1, destination_2, destination_3]
    
  end 
end 