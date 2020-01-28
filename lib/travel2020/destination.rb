class Travel2020::Destination 
  attr_reader :name, :more 
  
  @urls = ["https://www.lonelyplanet.com/bhutan", "https://www.lonelyplanet.com/england", "https://www.lonelyplanet.com/macedonia", "https://www.lonelyplanet.com/aruba-bonaire-and-curacao/aruba", "https://www.lonelyplanet.com/swaziland"]
  
  def self.all
    self.scrape_destinations
  end
  
  def self.scrape_destinations
    @urls.collect { |url| self.scrape(url) }
  end
  
  def self.scrape(url)
    doc = Nokogiri::HTML(open('url'))
    destination = self.new
    destination.name = doc.search("h1").text 
    destination.more = doc.search("div.featured").text
  end
end
