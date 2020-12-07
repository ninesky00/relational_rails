require 'rails_helper'

RSpec.describe 'Index Page' do 
    it 'can see all the Roaster names' do
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        starbuckspr = Roaster.create!(name: "Starbucks Private Reserve", micro: false, subscription_service: false, location: "Chelsea, NY")
        switchback = Roaster.create!(name: "Switchback Coffee", micro: true, subscription_service: false, location: "Colorado Springs ,CO")
        blue_bottle = Roaster.create!(name: "Blue Bottle Coffee", micro: false, subscription_service: true, location: "Midtown, NY")
        visit '/roasters'

        expect(page).to have_content(stumptown.name)
        expect(page).to have_content(starbuckspr.name)
        expect(page).to have_content(switchback.name)
        expect(page).to have_content(blue_bottle.name)
    end
end