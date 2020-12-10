require 'rails_helper'

RSpec.describe "Books" do
  before(:each) do
    @gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
    @king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true
    @strangers = @gladwell.books.create! name:"Talking to Strangers", publication_date: "2019-09-10", pages: 386, currently_printed: true
    @outliers = @gladwell.books.create! name:"Outliers", publication_date: "2008-11-18", pages: 304, currently_printed: true
    @tipping_point = @gladwell.books.create! name:"The Tipping Point", publication_date: "2000-03-01", pages: 301, currently_printed: true
    @rage = @king.books.create! name:"Rage", publication_date: "1977-09-13", pages: 211, currently_printed: false
    end

  describe "child index" do
    it "can see the attributes of each child" do
      visit '/books'

      expect(page).to have_content(@strangers.name)
      expect(page).to have_content(@strangers.publication_date)
      expect(page).to have_content(@strangers.pages)
      expect(page).to have_content(@strangers.currently_printed)
    end
  end

  describe "parent child index" do 
    it "can see the children associated with that parent" do 
      visit "/authors/#{@gladwell.id}/books"

      expect(page).to have_content(@strangers.name)
      expect(page).to have_content(@strangers.publication_date)
      expect(page).to have_content(@strangers.pages)
      expect(page).to have_content(@strangers.currently_printed)
    end
  end

  describe "child show" do
    it "can see the child with id with its attributes" do
      visit "/books/#{@strangers.id}"

      expect(page).to have_content(@strangers.name)
      expect(page).to have_content(@strangers.publication_date)
      expect(page).to have_content(@strangers.pages)
      expect(page).to have_content(@strangers.currently_printed)
    end
  end

  describe "parent child creation" do 
    it "can see create child link " do
      visit "/authors/#{@gladwell.id}/books"

      click_link 'New Book'

      expect(current_path).to eq("/authors/#{@gladwell.id}/books/new")

      fill_in 'Name', with: 'What the Dog Saw'
      fill_in 'publication_date', with: "2013-01-01"
      fill_in 'Pages', with: 410
      fill_in 'currently_printed', with: true

      click_on "Create Book"

      expect(current_path).to eq("/books")
      expect(page).to have_content("Name")
      expect(page).to have_content("2013-01-01")
      expect(page).to have_content(410)
      expect(page).to have_content(true)
    end
  end

  describe "update child" do 
    it "can see update link and fill in update form" do
      visit "/books/#{@strangers.id}"

      click_link 'Update Book'

      expect(current_path).to eq("/books/#{@strangers.id}/edit")

      fill_in 'Name', with: 'What the Dog Saw'
      fill_in 'publication_date', with: "2013-01-01"
      fill_in 'Pages', with: 410
      fill_in 'currently_printed', with: true

      click_on "Update Book"

      expect(current_path).to eq("/books")
      expect(page).to have_content("Name")
      expect(page).to have_content("2013-01-01")
      expect(page).to have_content(410)
      expect(page).to have_content(true)
    end
  end

  describe "delete child" do 
    it "can see delete link and delete child record" do
      visit "/books/#{@strangers.id}"

      click_button 'Delete'

      expect(current_path).to eq('/books')
      expect(page).to_not have_content(@strangers.name)
      expect(page).to_not have_button('Delete')
    end
  end
end
