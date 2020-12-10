require 'rails_helper'

RSpec.describe "Authors" do
  before(:each) do
    @tolkien = Author.create! name:"JRR Tolkien", age: 87, publications_since: "1922-05-11", last_publication: "1955-10-20", currently_active: false 
    @rowling = Author.create! name:"JK Rowling", age: 55, publications_since: "1997-06-26", last_publication: "2007-07-21", currently_active: false
    @gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
    @king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true
    end

  describe "parent index" do
    it "can see the name of each parent" do
      visit '/authors'

      expect(page).to have_content(@tolkien.name)
      expect(page).to have_content(@rowling.name)
      expect(page).to have_content(@gladwell.name)
      expect(page).to have_content(@king.name)
    end
  end

  describe "parent show" do 
    it "can see with parent id and attribute" do 
      visit "/authors/#{@gladwell.id}"

      expect(page).to have_content (@gladwell.name)
      expect(page).to have_content (@gladwell.age)
      expect(page).to have_content (@gladwell.publications_since)
      expect(page).to have_content (@gladwell.last_publication)
      expect(page).to have_content (@gladwell.currently_active)
    end
  end

  describe "parent creation" do
    it "can see new link and fill in form" do
      visit "/authors"

      click_link 'New Author'

      expect(current_path).to eq('/authors/new')

      fill_in 'Name', with: 'Dan Brown'
      fill_in 'age', with: 56
      fill_in 'publications_since', with: "1988-01-01"
      fill_in 'last_publication', with: "2017-10-03"
      fill_in 'currently_active', with: true

      click_on "Create Author"

      expect(current_path).to eq("/authors")
      expect(page).to have_content("Dan Brown")
      expect(page).to have_content(56)
      expect(page).to have_content("1988-01-01")
      expect(page).to have_content("2017-10-03")
      expect(page).to have_content(true)
    end
  end

  describe "update parent" do 
    it "can see update link and fill in update form" do
      visit "/authors/#{@gladwell.id}"

      click_link 'Update Author'

      expect(current_path).to eq("/authors/#{@gladwell.id}/edit")

      fill_in 'Name', with: 'New Author'
      fill_in 'age', with: 21
      fill_in 'publications_since', with: "2000-02-20"
      fill_in 'last_publication', with: "2020-02-20"
      fill_in 'currently_active', with: false

      click_on "Update Author"

      expect(current_path).to eq("/authors/#{@gladwell.id}")
      expect(page).to have_content("New Author")
      expect(page).to have_content(21)
      expect(page).to have_content("2000-02-20")
      expect(page).to have_content("2020-02-20")
      expect(page).to have_content(false)
    end
  end

  describe "delete parent" do 
    it "can delete an author" do
      visit "/authors/#{@gladwell.id}"

      click_button 'Delete'

      expect(current_path).to eq('/authors')
      expect(page).to_not have_content(@gladwell.name)
      expect(page).to_not have_button('Delete')
    end
  end
end
