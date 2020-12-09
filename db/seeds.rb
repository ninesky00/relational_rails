# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CoffeeBean.destroy_all
Roaster.destroy_all
Book.destroy_all
Author.destroy_all

stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
starbuckspr = Roaster.create!(name: "Starbucks Private Reserve", micro: false, subscription_service: false, location: "Chelsea, NY")
switchback = Roaster.create!(name: "Switchback Coffee", micro: true, subscription_service: false, location: "Colorado Springs ,CO")
blue_bottle = Roaster.create!(name: "Blue Bottle Coffee", micro: false, subscription_service: true, location: "Midtown, NY")

honduras_el_puente = stumptown.coffee_beans.create!(name: "Honduras El Puente", weight: 12, blend: false, roast: "Light", country_of_origin: "Honduras")
hair_bender = stumptown.coffee_beans.create!(name: "Hair Bender", weight: 12, blend: false, roast: "Medium", country_of_origin: "N/A")
costa_rica_naranjo = starbuckspr.coffee_beans.create!(name: "Costa Rica Naranjo", weight: 8, roast: "Medium", country_of_origin: "Costa Rica")
institute_street_house = switchback.coffee_beans.create!(name: "Institute Street House Blend", weight: 12, blend: true, roast: "Medium", country_of_origin: "N/A")
colombia_s_f = switchback.coffee_beans.create!(name: "Colombia San Fermin", weight: 80, blend: false, roast: "Light", country_of_origin: "Colombia")
ethiopia_dammu = switchback.coffee_beans.create!(name: "Ethiopia Dammu - Abana Coffee Estates", weight: 80, blend: false, roast: "Light", country_of_origin: "Ethiopia")
winter_blooms_single = blue_bottle.coffee_beans.create!(name: "Winter Blooms Single Origin", weight: 6, blend: false, roast: "Light", country_of_origin: "Ethiopia")
winter_blooms_blend = blue_bottle.coffee_beans.create!(name: "Winter Blooms Blend", weight: 6, blend: true, roast: "Medium", country_of_origin: "N/A")
kirinyaga_kaguyu = blue_bottle.coffee_beans.create!(name: "Kenya Kirinyaga Kaguyu", weight: 12, blend: false, roast: "Light", country_of_origin: "Kenya")
santa_rosa_finca_santa_ana = blue_bottle.coffee_beans.create!(name: "Guatemala Santa Rosa Finca Santa Ana", weight: 12, blend: false, roast: "Dark", country_of_origin: "Guatemala")



tolkien = Author.create! name:"JRR Tolkien", age: 87, publications_since: "1922-05-11", last_publication: "1955-10-20", currently_active: false 
rowling = Author.create! name:"JK Rowling", age: 55, publications_since: "1997-06-26", last_publication: "2007-07-21", currently_active: false
gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true

gladwell.books.create! title:"Talking to Strangers", publication_date: "2019-09-10", pages: 386, currently_printed: true
gladwell.books.create! title:"Outliers", publication_date: "2008-11-18", pages: 304, currently_printed: true
gladwell.books.create! title:"The Tipping Point", publication_date: "2000-03-01", pages: 301, currently_printed: true
king.books.create! title:"Rage", publication_date: "1977-09-13", pages: 211, currently_printed: false
