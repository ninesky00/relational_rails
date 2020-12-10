require 'rails_helper'

RSpec.describe Author, type: :model do
  before :each do 
  @tolkien = Author.create! name:"JRR Tolkien", age: 87, publications_since: "1922-05-11", last_publication: "1955-10-20", currently_active: false 
  @rowling = Author.create! name:"JK Rowling", age: 55, publications_since: "1997-06-26", last_publication: "2007-07-21", currently_active: false
  @gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
  @king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true
  @gladwell.books.create! name:"Talking to Strangers", publication_date: "2019-09-10", pages: 386, currently_printed: true
  @gladwell.books.create! name:"Outliers", publication_date: "2008-11-18", pages: 304, currently_printed: true
  @gladwell.books.create! name:"The Tipping Point", publication_date: "2000-03-01", pages: 301, currently_printed: true
  @king.books.create! name:"Rage", publication_date: "1977-09-13", pages: 211, currently_printed: false

  end

  describe "sort_by_publications_since" do 
    it "sorts records by date publications since" do

      expect(Author.sort_by_publications_since).to eq([@gladwell, @rowling, @king, @tolkien])
    end
  end

  describe "sort_by_boolean" do 
    it "sorts records by true or false value" do 

      expect(Author.sort_by_boolean).to eq([@gladwell, @king, @rowling, @tolkien])
    end
  end

  describe "sort_by_book_count" do 
    it "sorts records by number of book count" do 

      expect(Author.sort_by_book_count).to eq([@gladwell, @king, @rowling, @tolkien])
    end
  end
end
