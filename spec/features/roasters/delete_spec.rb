require 'rails_helper'

Rspec.describe 'Delete' do
    it "can delete a parent" do
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        visit "/roasters/#{stumptown.id}"
        click_on "Delete"

        expect(page).not_to have_content("Stumptown Coffee")
    end
end