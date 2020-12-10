require 'rails_helper'

RSpec.describe 'Delete' do
    #story5
    it "can delete a parent" do
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        visit "/roasters/#{stumptown.id}"
        click_button "Delete"

        expect(page).not_to have_content(stumptown.name)
    end
end