require 'rails_helper'

RSpec.describe "show" do 
  before(:each) do
    @gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
    @king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true
    @strangers = @gladwell.books.create! name:"Talking to Strangers", publication_date: "2019-09-10", pages: 386, currently_printed: true
    @outliers = @gladwell.books.create! name:"Outliers", publication_date: "2008-11-18", pages: 304, currently_printed: true
    @tipping_point = @gladwell.books.create! name:"The Tipping Point", publication_date: "2000-03-01", pages: 301, currently_printed: true
    @rage = @king.books.create! name:"Rage", publication_date: "1977-09-13", pages: 211, currently_printed: false
  end

  describe "parent child count" do
    it "can see a count of number for book associated with author" do
      visit "/authors/#{@gladwell.id}/books"

      expect(page).to have_text("This author has")
    end
  end

  describe "sort parent's child alphabetial by name" do
    it "can click a link and sort the author book index in alphabetical order" do
      visit "/authors/#{@gladwell.id}/books"

      click_link "Sort by alphabetical name"

      expect(page.all('a')[5]).to have_content("Outliers")
      expect(page.all('a')[6]).to have_content("Talking to Strangers")
      expect(page.all('a')[7]).to have_content("The Tipping Point")
    end
  end
end
  