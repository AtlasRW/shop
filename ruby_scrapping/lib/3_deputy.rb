require 'rspec'
require 'dotenv'
require 'open-uri'
require 'rubygems'
require 'nokogiri'

def deputy_scrapper
  first_name = Array.new
  last_name = Array.new
  email = Array.new

  Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes")).xpath('//div[contains(@class,"liste")]//table[contains(@summary,"Députés dont le nom commence par A")]//a/@href').each do |url|
    first_name << Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes#{url}")).xpath('//div[contains(@class,"info_depute")]/h1').text.split[0]
    last_name << Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes#{url}")).xpath('//div[contains(@class,"info_depute")]/h1').text.split[1..-1].join(" ")
    email << Nokogiri::HTML(open("https://www.nosdeputes.fr/deputes#{url}")).xpath('//div[contains(@id,"b1")]//li[1]/a[contains(@href,"mailto")]').text
  end
# fetching data and putting it into arrays

  stage = Hash.new
  stage = first_name.zip(last_name, email)
  result = Array.new
  stage.each do |key, value1, value2|
    result << Hash["first_name"=>key, "last_name"=>value1, "email"=>value2]
  end
# turning data into array of hashes

  return result
end

p deputy_scrapper
# ATTENTION !!! CHARGEMENT TRÈS LONG !!!

# ' ruby lib/3_deputy.rb ' pour le résultat