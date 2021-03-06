require 'rails_helper'

RSpec.describe 'New' do
    before :each do
        @stumptown = Roaster.create!(name: "Stumptown Coffee", micro: false, subscription_service: true, location: "Koreatown, NY")
        @starbuckspr = Roaster.create!(name: "Starbucks Private Reserve", micro: false, subscription_service: false, location: "Chelsea, NY")
        @switchback = Roaster.create!(name: "Switchback Coffee", micro: true, subscription_service: false, location: "Colorado Springs ,CO")
        @blue_bottle = Roaster.create!(name: "Blue Bottle Coffee", micro: false, subscription_service: true, location: "Midtown, NY")

        @honduras_el_puente = @stumptown.coffee_beans.create!(name: "Honduras El Puente", weight: 12, blend: false, roast: "Light", country_of_origin: "Honduras")
        @hair_bender = @stumptown.coffee_beans.create!(name: "Hair Bender", weight: 12, blend: false, roast: "Medium", country_of_origin: "N/A")
        @costa_rica_naranjo = @starbuckspr.coffee_beans.create!(name: "Costa Rica Naranjo", blend: false, weight: 8, roast: "Medium", country_of_origin: "Costa Rica")
        @institute_street_house = @switchback.coffee_beans.create!(name: "Institute Street House Blend", weight: 12, blend: true, roast: "Medium", country_of_origin: "N/A")
        @colombia_s_f = @switchback.coffee_beans.create!(name: "Colombia San Fermin", weight: 80, blend: false, roast: "Light", country_of_origin: "Colombia")
        @ethiopia_dammu = @switchback.coffee_beans.create!(name: "Ethiopia Dammu - Abana Coffee Estates", weight: 80, blend: false, roast: "Light", country_of_origin: "Ethiopia")
        @winter_blooms_single = @blue_bottle.coffee_beans.create!(name: "Winter Blooms Single Origin", weight: 6, blend: false, roast: "Light", country_of_origin: "Ethiopia")
        @winter_blooms_blend = @blue_bottle.coffee_beans.create!(name: "Winter Blooms Blend", weight: 6, blend: true, roast: "Medium", country_of_origin: "N/A")
        @kirinyaga_kaguyu = @blue_bottle.coffee_beans.create!(name: "Kenya Kirinyaga Kaguyu", weight: 12, blend: false, roast: "Light", country_of_origin: "Kenya")
        @santa_rosa_finca_santa_ana = @blue_bottle.coffee_beans.create!(name: "Guatemala Santa Rosa Finca Santa Ana", weight: 12, blend: false, roast: "Dark", country_of_origin: "Guatemala")
    end
    #story9
    it "can create CoffeeBean" do
        visit "/roasters/#{@stumptown.id}/coffeebeans"
  
        click_link 'Create Beans'
  
        expect(current_path).to eq("/roasters/#{@stumptown.id}/coffeebeans/new")
  
        fill_in 'Name', with: 'Test1'
        fill_in 'roast', with: "Dark"
        fill_in 'country_of_origin', with: "test of america"
        fill_in 'blend', with: "true"
        fill_in 'weight', with: "12"
  
        click_on "Create Coffee Bean"
  
        expect(current_path).to eq("/roasters/#{@stumptown.id}/coffeebeans")
        expect(page).to have_content("Test1")
      end

end