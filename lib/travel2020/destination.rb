class Travel2020::Destination 
  attr_accessor :name, :url, :more
  
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
    page = HTTParty.get('https://www.lonelyplanet.com/bhutan')
    parsed_page = Nokogiri::HTML(page)

    destination = self.new
    destination.name = doc.search("h2.main-title").text.strip
    destination.continent
    destination.more

    destination
  end
end 