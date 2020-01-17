class Travel2020::Destination 
  
  def self.all 
    puts <<-DOC 
      1. Bhutan
      2. England
      3. North Macedonia 
    DOC 
    
    destination_1 = self.all 
    destination_1.name = "Bhutan"
    destination_1.continent = "Asia" 
    destination_1.url = "https://www.lonelyplanet.com/bhutan" 