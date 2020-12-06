require 'rails_helper'

RSpec.describe 'New Page' do 
    it 'can create a new entry to the index' do
        visit '/roasters'

        expect(page).to have_link("New Roaster")

        click_on "New Roaster"

        expect(current_path).to eq('/roasters/new')

        fill_in 'Name', with: 'Expected'
        fill_in 'micro', with: 'false'
        fill_in 'subscription_service', with: 'false'
        fill_in 'Location', with: 'Expected'
        
        click_on "Create Roaster"

        expect(page).to have_content('Expected')
    end
end