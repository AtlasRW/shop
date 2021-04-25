require 'rspec'
require 'dotenv'
require 'open-uri'
require 'rubygems'
require 'nokogiri'
require 'rspec'

def crypto_scrapper
  currencies = Array.new
  prices = Array.new

  Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")).xpath('//td[contains(@class,"sort-by__name")]//a').each do |currency|
    currencies << currency.text
  end
  Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")).xpath('//td[contains(@class,"sort-by__price")]//a').each do |price|
    prices << price.text.gsub(/[^\d.]/,'').to_f
  # fetching data and putting it into arrays
  end

  stage = Hash[currencies.zip(prices)]
  result = Array.new
  stage.each do |key, value|
    result << Hash[key, value]
  # turning data into array of hashes
  end

  return result
end

p crypto_scrapper

# lancer ' ruby lib/1_crypto.rb ' pour le résultat