class Travel2020::Destination 	class Travel2020::Destination 
  attr_accessor :name, :more	  attr_reader :name, :more 


  def self.all 	  @urls = ["https://www.lonelyplanet.com/bhutan", "https://www.lonelyplanet.com/england", "https://www.lonelyplanet.com/macedonia", "https://www.lonelyplanet.com/aruba-bonaire-and-curacao/aruba", "https://www.lonelyplanet.com/swaziland"]
    self.scrape_destinations	
  end 	  def self.all

    self.scrape_destinations
  def self.scrape_destinations	  end
    destinations = []	

  def self.scrape_destinations
    destinations << self.scrape_bhutan	    @urls.collect { |url| self.scrape(url) }
    destinations << self.scrape_england	  end
    destinations << self.scrape_macedonia	
    destinations << self.scrape_aruba	  def self.scrape(url)
    destinations << self.scrape_swaziland	    doc = Nokogiri::HTML(open('url'))

    destination = self.new
    destinations	    destination.name = doc.search("h1").text 
  end	    destination.more = doc.search("div.featured").text

  end
  def self.scrape_bhutan	end
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
