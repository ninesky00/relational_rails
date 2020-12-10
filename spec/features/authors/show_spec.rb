require 'rails_helper'

RSpec.describe "show" do 
  before(:each) do
    @tolkien = Author.create! name:"JRR Tolkien", age: 87, publications_since: "1922-05-11", last_publication: "1955-10-20", currently_active: false 
    @rowling = Author.create! name:"JK Rowling", age: 55, publications_since: "1997-06-26", last_publication: "2007-07-21", currently_active: false
    @gladwell = Author.create! name:"Malcolm Gladwell", age: 57, publications_since: "2000-03-01", last_publication: "2019-09-10", currently_active: true
    @king = Author.create! name:"Stephen King", age: 73, publications_since: "1973-04-01", last_publication: "2019-09-10", currently_active: true
  end

  describe "display records over a threshold" do 
    it "can input a value into a form and that returns only records more than threshold" do
      visit '/authors'

      expect(page).to have_button("Enter age threshold")

      fill_in 'age', with: 60
      click_on "Enter age threshold"

      expect(page).to_not have_content(@gladwell.name)
      expect(page).to_not have_content(@rowling.name)
    end
  end
end