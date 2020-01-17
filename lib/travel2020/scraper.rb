!/usr/bin/env ruby

require 'nokogiri'
require 'open-uri'
require 'pry'

doc = Nokogiri::HTML(open(https://www.lonelyplanet.com/best-in-travel/countries))