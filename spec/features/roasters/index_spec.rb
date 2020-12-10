require 'rails_helper'

RSpec.describe 'Index Page' do 
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
    it 'can see all the Roaster names' do
        visit '/roasters'

        expect(page).to have_content(@stumptown.name)
        expect(page).to have_content(@starbuckspr.name)
        expect(page).to have_content(@switchback.name)
        expect(page).to have_content(@blue_bottle.name)
    end
    it "can sort roasters by amount of coffees they sell" do
        visit '/roasters'
        click_link "Sort list by roaster's # of different coffees"

        expect(page.all('a')[2]).to have_content("Blue Bottle Coffee")
    end
    it "can have an Edit link per Roaster entry" do
        visit '/roasters'

        expect(page.all('a')[3]).to have_content("Edit")
        expect(page.all('a')[6]).to have_content("Edit")
        expect(page.all('a')[9]).to have_content("Edit")
    end
    it "can have an Delete link per Roaster entry" do
        visit '/roasters'

        expect(page.all('a')[4]).to have_content("Delete")
        expect(page.all('a')[7]).to have_content("Delete")
        expect(page.all('a')[10]).to have_content("Delete")
    end
    it "can have a link from every page to lead back to Roaster Index" do
        visit '/coffeebeans'
        click_link "Complete Roaster List"

        expect(current_path).to eq("/roasters")
    end
    it "can have a link from every page to lead back to CoffeeBeans Index" do
        visit '/roasters'
        click_link "Complete Coffee Bean List"
        
        expect(current_path).to eq("/coffeebeans")
    end
end