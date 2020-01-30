
class Travel2020::Destination 
  attr_accessor :name, :more
  
  @@destinations = []
  
  @@urls = ["https://www.lonelyplanet.com/bhutan", "https://www.lonelyplanet.com/england", "https://www.lonelyplanet.com/macedonia", "https://www.lonelyplanet.com/aruba-bonaire-and-curacao/aruba", "https://www.lonelyplanet.com/swaziland"]
  
  def self.all 
    if @@destinations == []
      self.scrape_destinations
    else 
      @@destinations
    end 
  end

 def self.scrape_destinations
  @@destinations = @@urls.collect { |url| self.scrape(url) }
 end


 def self.scrape(url)
   doc = Nokogiri::HTML(open(url))
   destination = self.new
   destination.name = doc.search("h1").text
   destination.more = doc.search("div.featured").text
   destination
 end
end
