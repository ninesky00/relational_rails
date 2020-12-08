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

end