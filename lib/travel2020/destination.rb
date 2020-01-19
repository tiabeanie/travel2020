class Travel2020::Destination 
  attr_accessor :name, :url, :more
  
  def self.all 
    self.scrape_destinations
  end 
  
  def self.scrape_destinations  
    destinations = []
    url = "https://www.forbes.com/sites/duncanmadden/2019/10/22/the-lonely-planet-top-ten-tourism-countries-for-2020/#756101384cdd"
    unparsed_page = HTTParty.get(url)
    parsed_page = Nokogiri::HTML(unparsed_page)
    destinations << name = parsed_page.css('h3').text.split(/\d.\s/)
    destinations.each do |destination| 
      new_destination = self.new 
      new_destination.name = parsed_page.css('h3').text.split(/\d.\s/)
      new destination.more = 
    byebug
    destinations
  end 
end 