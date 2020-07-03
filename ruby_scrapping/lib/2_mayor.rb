require 'rspec'
require 'dotenv'
require 'open-uri'
require 'rubygems'
require 'nokogiri'

def mail_scrapper
  city = Array.new
  email = Array.new

  Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html")).xpath('//tr//a[contains(@class,"lientxt")]/@href').each do |url|
    city << Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{url}")).xpath('//h1/small').text.delete("Commune de ")
    email << Nokogiri::HTML(open("http://annuaire-des-mairies.com/#{url}")).xpath('//section[2]//tbody/tr[4]/td[2]').text
  # fetching data and putting it into arrays
  end

  stage = Hash[city.zip(email)]
  result = Array.new
  stage.each do |key, value|
    result << Hash[key, value]
  # turning data into array of hashes
  end

  return result
end

p mail_scrapper
# ATTENTION !!! CHARGEMENT TRÈS LONG !!!

# lancer ' ruby lib/2_mayor.rb ' pour le résultat