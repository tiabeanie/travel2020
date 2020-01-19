class Travel2020::Destination 
  attr_accessor :name, :continent, :url
  
  def self.all 
    self.scrape_destinations
  end 
  
  def self.scrape_destinations  
    destinations = []
    url = "https://www.forbes.com/sites/duncanmadden/2019/10/22/the-lonely-planet-top-ten-tourism-countries-for-2020/#756101384cdd"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    destinations << name = parsed_page.css('h3').text.split(/\d.\s/)
    byebug
    destinations
  end 
end 