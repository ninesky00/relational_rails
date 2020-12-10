require 'rails_helper'

RSpec.describe 'Show' do 
    it "can show parent's content" do 
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")

        visit "/roasters/#{stumptown.id}"

        expect(page).to have_content (stumptown.name)
        expect(page).to have_content (stumptown.micro)
        expect(page).to have_content (stumptown.subscription_service)
        expect(page).to have_content (stumptown.location)
        expect(page).to have_content (stumptown.created_at)
        expect(page).to have_content (stumptown.updated_at)
    end
    #story26
    it "can lead from Roaster index to Roaster - Coffee Beans Index" do
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        visit "/roasters/#{stumptown.id}"
        click_link "List of coffee currently being sold"

        expect(current_path).to eq("/roasters/#{stumptown.id}/coffeebeans")
    end
    #story22
    it "click on any Roaster name in the web page to lead back to Roaster index" do
        stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        visit "/roasters/#{stumptown.id}/coffeebeans"

        click_link "#{stumptown.name}"

        expect(current_path).to eq("/roasters/#{stumptown.id}")
    end
end