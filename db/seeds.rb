# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
CoffeeBean.destroy_all
Roaster.destroy_all

stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
starbuckspr = Roaster.create!(name: "Starbucks Private Reserve", micro: false, subscription_service: false, location: "Chelsea, NY")
switchback = Roaster.create!(name: "Switchback Coffee", micro: true, subscription_service: false, location: "Colorado Springs ,CO")
blue_bottle = Roaster.create!(name: "Blue Bottle Coffee", micro: false, subscription_service: true, location: "Midtown, NY")

honduras_el_puente = stumptown.coffee_beans.create!(name: "Honduras El Puente", weight: 12, blend: false, roast: "Light")
hair_bender = stumptown.coffee_beans.create!(name: "Hair Bender", weight: 12, blend: false, roast: "Medium")
