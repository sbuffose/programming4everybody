require "nokogiri"
require "open-uri"
require 'csv'

require_relative "item"

url = "https://www.maria-cher.com.ar/invierno-20/coleccion/remeras-y-buzos.html"

doc = open(url).read
data = Nokogiri::HTML(doc)
items = []

data.search(".item").each do |item|
  data = {}
  data[:name] = item.search(".product-name").text.strip
  data[:old_price] = item.search(".old-price .price").text.strip.gsub(/[$|\.]/,"").to_i
  data[:price] = item.search(".special-price .price").text.strip.gsub(/[$|\.]/,"").to_i
  items << Item.new(data)
end

items.each_with_index do |item, index|
  puts "#{index}. #{item.name} - #{item.old_price} (#{item.discount}%)"
end

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = './data.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Nombre', 'Precio', 'Oferta']
  items.each do |item|
  csv << item.build_csv
  end
end
