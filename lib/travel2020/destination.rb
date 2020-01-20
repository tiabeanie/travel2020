class Travel2020::Destination 
  attr_accessor :name, :more
  
  def self.all 
    self.scrape_destinations
  end 
  
  def self.scrape_destinations
    destinations = []

    destinations << self.scrape_bhutan
    destinations << self.scrape_england
    destinations << self.scrape_macedonia
    destinations << self.scrape_aruba
    destinations << self.scrape_swaziland

    destinations
  end

  def self.scrape_bhutan
    doc = Nokogiri::HTML(open('https://www.lonelyplanet.com/bhutan'))

    destination = self.new
    destination.name = doc.search("h1").text
    destination.more = doc.search("div.featured").text

    destination
  end
  
  def self.scrape_england
    doc = Nokogiri::HTML(open('https://www.lonelyplanet.com/england'))

    destination = self.new
    destination.name = doc.search("h1").text
    destination.more = doc.search("div.featured").text

    destination
  end
  
  def self.scrape_macedonia
    doc = Nokogiri::HTML(open('https://www.lonelyplanet.com/macedonia'))

    destination = self.new
    destination.name = doc.search("h1").text
    destination.more = doc.search("div.featured").text

    destination
  end
  
  def self.scrape_aruba
    doc = Nokogiri::HTML(open('https://www.lonelyplanet.com/aruba-bonaire-and-curacao/aruba'))

    destination = self.new
    destination.name = doc.search("h1").text
    destination.more = doc.search("div.featured").text

    destination
  end
  
  def self.scrape_swaziland
    doc = Nokogiri::HTML(open('https://www.lonelyplanet.com/swaziland'))

    destination = self.new
    destination.name = doc.search("h1").text
    destination.more = doc.search("div.featured").text

    destination
  end
end 