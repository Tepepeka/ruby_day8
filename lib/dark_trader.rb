#dark_trader

require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'pry'
   
def scrapping
    #connection a l'URL
    page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all"))
  
    #Sortir le nom des monnaies dans un array
    crypto_name = page.xpath('//td[contains(@class,"symbol")]')
    crypto_name_array = crypto_name.collect(&:text)

    #sortir la value des monnaies dans un array
    crypto_price = page.xpath('//td[contains(@class,"price")]')
    crypto_price_array = crypto_price.collect(&:text)
  
    #Concaténer les 2 arrays
    data = Hash[crypto_name_array.zip crypto_price_array]
    final_data = data.map {|key, value| puts "#{key} => #{value.delete("$,").to_f}"}
end 
  
def perform 
    scrapping
end
  
perform 