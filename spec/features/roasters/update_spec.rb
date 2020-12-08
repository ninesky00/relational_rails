require 'rails_helper'

RSpec.describe 'Update' do 
    it "can update the parent" do 
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        visit "/roasters/#{stumptown.id}"
        click_on "Edit"
        fill_in 'Name', with: 'Edited'
        fill_in 'micro', with: 'true'
        fill_in 'subscription_service', with: 'true'
        fill_in 'Location', with: 'Edited2'

        click_on "Edit Info"

        expect(page).to have_content('Edited')
        expect(page).to have_content('true')
        expect(page).to have_content('true')
        expect(page).to have_content('Edited2')
    end
end