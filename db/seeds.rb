# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Book.destroy_all
Author.destroy_all

tolkien = Author.create! name:"JRR Tolkien", age: 87, publications_since: "1922-05-11", last_publication: "1955-10-20", currently_active: false 
rowling = Author.create! name:"JK Rowling", age: 55, publications_since: "1997-06-26", last_publication: "2007-07-21", currently_active: false
gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true

gladwell.books.create! title:"Talking to Strangers", publication_date: "2019-09-10", pages: 386, currently_printed: true
gladwell.books.create! title:"Outliers", publication_date: "2008-11-18", pages: 304, currently_printed: true
gladwell.books.create! title:"The Tipping Point", publication_date: "2000-03-01", pages: 301, currently_printed: true
king.books.create! title:"Rage", publication_date: "1977-09-13", pages: 211, currently_printed: false