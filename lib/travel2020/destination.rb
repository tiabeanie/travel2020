class Travel2020::Destination 
  attr_accessor :name, :continent, :url
  
  def self.all 
    self.scrape_destinations
  end 
  
  def self.scrape_destinations  
    destinations = []
    
    doc = Nokogiri::HTML(open("https://www.lonelyplanet.com/best-in-travel"))
    destinations
  end 
end 